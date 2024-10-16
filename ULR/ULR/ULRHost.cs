using System.Runtime.InteropServices;

namespace ULR;

static partial class ULRHost
{
	[LibraryImport($"ULR.Hosting.dll", StringMarshalling = StringMarshalling.Custom, StringMarshallingCustomType = typeof(System.Runtime.InteropServices.Marshalling.AnsiStringMarshaller))]
	[UnmanagedCallConv(CallConvs = new Type[] { typeof(System.Runtime.CompilerServices.CallConvCdecl) })]
	private static partial int HostNativeAssembly(
		string assemblyName,
		string debuggerPath,
		string stdlibPath,
		int argc,
		[MarshalAs(UnmanagedType.LPArray, ArraySubType = UnmanagedType.LPStr)] string[] argv
	);
	
	public static int HostNative(
		string assemblyName,
		string debuggerPath,
		string stdlibPath,
		IEnumerable<string> args
	)
	{
		string[] argv = [assemblyName, ..args];
		
		return HostNativeAssembly(assemblyName, debuggerPath, stdlibPath, argv.Length, argv);
	}
}