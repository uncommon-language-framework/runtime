#include "../Assembly.hpp"
#include "../Resolver.hpp"
#include <map>
#include <iostream>

extern ULR::Resolver::ULRAPIImpl* internal_api;


namespace ULR
{
	Type::Type(TypeType decl_type, Assembly* assembly, char* name, unsigned int attrs, size_t size, std::vector<Type*> interfaces, Type* immediate_base, bool is_empty_generic, unsigned int num_type_args)
	{
		this->decl_type = decl_type;
		this->assembly = assembly;
		this->name = name;
		this->attrs = attrs;
		this->size = size;
		this->interfaces = interfaces;
		this->immediate_base = immediate_base;
		this->is_empty_generic = is_empty_generic;
		this->num_type_args = num_type_args;
	}

	Type::Type(TypeType decl_type, Assembly* assembly, char* name, unsigned int attrs, size_t size, std::vector<Type*> interfaces, Type* immediate_base, Type* array_element_type)
	{
		this->decl_type = decl_type;
		this->assembly = assembly;
		this->name = name;
		this->attrs = attrs;
		this->size = size;
		this->interfaces = interfaces;
		this->immediate_base = immediate_base;
		this->element_type = array_element_type;

		if (IsBoxableStruct(element_type))
			this->element_storage_size = element_type->size;
		else
			this->element_storage_size = sizeof(char*);
	}

	void Type::AddStaticMember(MemberInfo* member)
	{
		member->parent_type = this;

		if (member->decl_type == MemberType::Property)
		{
			PropertyInfo* as_prop = (PropertyInfo*) member;

			if (as_prop->getter) as_prop->getter->parent_type = this;
			if (as_prop->setter) as_prop->setter->parent_type = this;
		}

		static_attrs[member->name].emplace_back(member);
	}

	void Type::AddInstanceMember(MemberInfo* member)
	{
		member->parent_type = this;

		if (member->decl_type == MemberType::Property)
		{
			PropertyInfo* as_prop = (PropertyInfo*) member;

			if (as_prop->getter) as_prop->getter->parent_type = this;
			if (as_prop->setter) as_prop->setter->parent_type = this;
		}

		inst_attrs[member->name].emplace_back(member);
	}

	void replace(std::string& str, const std::string& target, const std::string& replacement) {
		size_t pos = 0;

		while ((pos = str.find(target, pos)) != std::string::npos)
		{
			str.replace(pos, target.length(), replacement);
			pos += replacement.length();
		}
	}

	// TODO: Resolve Generics that are nested (e.g. if a method in GenericClass<T> takes a List<T> as an argument)
	// TODO: Reduce string and LLJIT allocations
	void TransformGenericIntoApplied(std::vector<MemberInfo*>& infos, std::vector<Type*>& type_args, size_t& prev_field_offset)
	{
		// NOTE: must create copies of all of the MemberInfo objects in infos and replace them in infos (which is a ref so it should update the new type's table)
	// 	for (auto& info : infos)
	// 	{
	// 		if (!info) continue;

	// 		info->is_empty_generic = false;

	// 		if (info->decl_type == MemberType::Method)
	// 		{
	// 			MethodInfo* new_info = new MethodInfo(*((MethodInfo*) info));

	// 			delete info; // delete old info

	// 			for (auto& arg : new_info->argsig)
	// 			{
	// 				if (arg->IsGenericPlaceholder())
	// 				{
	// 					unsigned char num = ((GenericPlaceholder*) arg)->num;

	// 					arg = type_args[num]; // replace placeholder with actual type
	// 				}
	// 			}

	// 			if (new_info->rettype->IsGenericPlaceholder())
	// 			{
	// 				unsigned char num = ((GenericPlaceholder*) new_info->rettype)->num;

	// 				new_info->rettype = type_args[num]; // replace placeholder with actual type
	// 			}

	// 			std::string alloced_llir_code(new_info->generic_llir);

	// 			std::string typedefs; // NOTE: currently we add all typedefs, in the future it might be wise to add just those that are necessary

	// 			for (auto typearg : type_args)
	// 			{
	// 				typedefs = typedefs+'%'+typearg->name+" = type { ["+std::to_string(typearg->size)+" x i8] }\n";
	// 			}

	// 			for (size_t i = 0; i < type_args.size(); i++)
	// 			{
	// 				std::string search_for_replace = std::to_string(i);
	// 				search_for_replace.insert(search_for_replace.begin(), 'T');
					
	// 				replace(alloced_llir_code, search_for_replace, std::to_string(type_args[i]->size));
	// 			}

	// 			alloced_llir_code.insert(0, typedefs);

	// 			std::unique_ptr<LLVMContext> ctx = std::make_unique<LLVMContext>();
	// 			SMDiagnostic err;

	// 			std::unique_ptr<Module> mod = llvm::parseIR(
	// 				MemoryBufferRef(alloced_llir_code, "ULR_GENERIC_LOAD"),
	// 				err, *ctx
	// 			);

	// 			if (!mod) // TODO: remove later once LLVM IR confirmed to be always valid
	// 			{
	// 				std::cout << "LLVM IR Error: " << err.getMessage().str();
	// 				exit(1);
	// 			}

	// 			ThreadSafeModule thread_safe_mod = ThreadSafeModule(std::move(mod), ThreadSafeContext(std::move(ctx)));

	// 			llvm::cantFail(internal_api->jit->addIRModule(std::move(thread_safe_mod)));

	// 			auto func = llvm::cantFail(internal_api->jit->lookup("ulr_generic_load"));

	// 			void* addr = func.toPtr<void*>();

	// 			new_info->offset = addr;

	// 			delete info; // delete old info

	// 			info = new_info;

	// 			continue;
	// 		}

	// 		if (info->decl_type == MemberType::Ctor)
	// 		{
	// 			ConstructorInfo* new_info = new ConstructorInfo(*((ConstructorInfo*) info));

	// 			delete info; // delete old info

	// 			for (auto& arg : new_info->argsig)
	// 			{
	// 				if (arg->IsGenericPlaceholder())
	// 				{
	// 					unsigned char num = ((GenericPlaceholder*) arg)->num;

	// 					arg = type_args[num]; // replace placeholder with actual type
	// 				}
	// 			}

	// 			std::string alloced_llir_code(new_info->generic_llir);

	// 			std::string typedefs; // NOTE: currently we add all typedefs, in the future it might be wise to add just those that are necessary

	// 			for (auto typearg : type_args)
	// 			{
	// 				typedefs = typedefs+'%'+typearg->name+" = type { ["+std::to_string(typearg->size)+" x i8] }\n";
	// 			}

	// 			for (size_t i = 0; i < type_args.size(); i++)
	// 			{
	// 				std::string search_for_replace = std::to_string(i);
	// 				search_for_replace.insert(search_for_replace.begin(), 'T');
					
	// 				replace(alloced_llir_code, search_for_replace, std::to_string(type_args[i]->size));
	// 			}

	// 			alloced_llir_code.insert(0, typedefs);

	// 			std::unique_ptr<LLVMContext> ctx = std::make_unique<LLVMContext>();
	// 			SMDiagnostic err;

	// 			std::unique_ptr<Module> mod = llvm::parseIR(
	// 				MemoryBufferRef(alloced_llir_code, "ULR_GENERIC_LOAD"),
	// 				err, *ctx
	// 			);

	// 			if (!mod) // TODO: remove later once LLVM IR confirmed to be always valid
	// 			{
	// 				std::cout << "LLVM IR Error: " << err.getMessage().str();
	// 				exit(1);
	// 			}

	// 			ThreadSafeModule thread_safe_mod = ThreadSafeModule(std::move(mod), ThreadSafeContext(std::move(ctx)));

	// 			llvm::cantFail(internal_api->jit->addIRModule(std::move(thread_safe_mod)));

	// 			auto func = llvm::cantFail(internal_api->jit->lookup("ulr_generic_load"));

	// 			void* addr = func.toPtr<void*>();

	// 			new_info->offset = addr;

	// 			delete info; // delete old info

	// 			info = new_info;

	// 			continue;
	// 		}

	// 		if (info->decl_type == MemberType::Dtor)
	// 		{
	// 			DestructorInfo* new_info = new DestructorInfo(*((DestructorInfo*) info));

	// 			delete info; // delete old info

	// 			std::string alloced_llir_code(new_info->generic_llir);

	// 			std::string typedefs; // NOTE: currently we add all typedefs, in the future it might be wise to add just those that are necessary

	// 			for (auto typearg : type_args)
	// 			{
	// 				typedefs = typedefs+'%'+typearg->name+" = type { ["+std::to_string(typearg->size)+" x i8] }\n";
	// 			}

	// 			for (size_t i = 0; i < type_args.size(); i++)
	// 			{
	// 				std::string search_for_replace = std::to_string(i);
	// 				search_for_replace.insert(search_for_replace.begin(), 'T');
					
	// 				replace(alloced_llir_code, search_for_replace, std::to_string(type_args[i]->size));
	// 			}

	// 			alloced_llir_code.insert(0, typedefs);

	// 			std::unique_ptr<LLVMContext> ctx = std::make_unique<LLVMContext>();
	// 			SMDiagnostic err;

	// 			std::unique_ptr<Module> mod = llvm::parseIR(
	// 				MemoryBufferRef(alloced_llir_code, "ULR_GENERIC_LOAD"),
	// 				err, *ctx
	// 			);

	// 			if (!mod) // TODO: remove later once LLVM IR confirmed to be always valid
	// 			{
	// 				std::cout << "LLVM IR Error: " << err.getMessage().str();
	// 				exit(1);
	// 			}

	// 			ThreadSafeModule thread_safe_mod = ThreadSafeModule(std::move(mod), ThreadSafeContext(std::move(ctx)));

	// 			llvm::cantFail(internal_api->jit->addIRModule(std::move(thread_safe_mod)));

	// 			auto func = llvm::cantFail(internal_api->jit->lookup("ulr_generic_load"));

	// 			void* addr = func.toPtr<void*>();

	// 			new_info->offset = addr;

	// 			info = new_info;

	// 			return; // there can rever be an overloaded dtor
	// 		}

	// 		if (info->decl_type == MemberType::Field) // TODO: we need static generic initialization functions to set default field vals
	// 		{
	// 			FieldInfo* new_info = new FieldInfo(*((FieldInfo*) info));
				
	// 			delete info; // delete old info				

	// 			if (new_info->is_static)
	// 			{
	// 				if (IsBoxableStruct(new_info->valtype))
	// 				{
	// 					new_info->offset = internal_api->AllocateFieldOffset(
	// 						new_info->valtype->size
	// 					);
	// 				}
	// 				else
	// 				{
	// 					new_info->offset = internal_api->AllocateFieldOffset(
	// 						sizeof(void*)
	// 					);
	// 				}
	// 			}
	// 			else
	// 			{
	// 				// need to calc offset somehow
	// 				new_info->offset = (void*) prev_field_offset;

	// 				if (new_info->valtype->IsGenericPlaceholder())
	// 				{
	// 					new_info->valtype = type_args[((GenericPlaceholder*) new_info->valtype)->num];
	// 				}

	// 				if (IsBoxableStruct(new_info->valtype))
	// 				{
	// 					prev_field_offset+=new_info->valtype->size;
	// 				}
	// 				else
	// 				{
	// 					prev_field_offset+=sizeof(void*);
	// 				}
	// 			}

	// 			return; // there can rever be an overloaded field
	// 		}

	// 		if (info->decl_type == MemberType::Property)
	// 		{
	// 			PropertyInfo* new_info = new PropertyInfo(*((PropertyInfo*) info));
				
	// 			delete info; // delete old info				
				
	// 			// TODO: need a null check on getter/setter
	// 			std::vector<MemberInfo*> methods { new_info->getter, new_info->setter };

	// 			TransformGenericIntoApplied(methods, type_args, prev_field_offset);

	// 			new_info->getter = (MethodInfo*) methods[0];
	// 			new_info->setter = (MethodInfo*) methods[1];

	// 			return; // there can rever be an overloaded property
	// 		}
	// 	}
	// }

	// Type* Type::MakeGeneric(std::vector<Type*> type_args)
	// {
	// 	std::string new_name = this->name;

	// 	new_name.push_back('<');

	// 	for (auto arg : type_args)
	// 	{
	// 		new_name.append(arg->name);
	// 		new_name.push_back(',');
	// 	}

	// 	new_name.pop_back();
	// 	new_name.push_back('>');

	// 	// if the type is already created, don't recreate it
	// 	if (this->assembly->types.count(const_cast<char*>(new_name.c_str())))
	// 		return this->assembly->types[const_cast<char*>(new_name.c_str())];

	// 	Type* new_type = new Type(*this);

	// 	new_type->type_args = type_args;
	// 	new_type->is_empty_generic = false;
	// 	new_type->is_generic_construction = true;

	// 	new_type->name = strdup(
	// 		new_name.c_str()
	// 	);

	// 	size_t prev_field_offset = sizeof(Type*);

	// 	for (auto& entry : new_type->static_attrs)
	// 	{	// don't use entry.second as this will yield a copy, we want to modify new_type->static_attrs' refs
	// 		TransformGenericIntoApplied(new_type->static_attrs[entry.first], type_args, prev_field_offset);
	// 	}
	// 	for (auto& entry : new_type->inst_attrs)
	// 	{	// see comment above for static_attrs
	// 		TransformGenericIntoApplied(new_type->inst_attrs[entry.first], type_args, prev_field_offset);
	// 	}

	// 	new_type->size = prev_field_offset;

	// 	new_type->assembly->types[new_type->name] = new_type;

	// 	return new_type;
	}

	Type::~Type()
	{			
		free(name);
		
		for (auto& entry : static_attrs)
		{
			for (auto& member : entry.second)
			{
				delete member;
			}
		}

		for (auto& entry : inst_attrs)
		{
			for (auto& member : entry.second)
			{
				delete member;
			}
		}

		delete[] primary_vtable;

		for (auto& entry : interface_vtable)
		{
			delete[] entry.second;
		}
	}

	bool IsFloatingPointType(Type* typeptr)
	{
		std::string_view name = typeptr->name;

		return (name == "[System]Float") || (name == "[System]Double");
	}
}