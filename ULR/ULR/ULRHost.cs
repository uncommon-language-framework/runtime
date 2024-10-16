using System.Runtime.InteropServices;

namespace ULR;

[StructLayout(LayoutKind.Sequential)]
readonly struct HostingResult
{
	public readonly int RetCode;
	public readonly int Error;
};

public class ULRInternalException(int code)
	: Exception($"ULR Internal Error (code {code})");

static partial class ULRHost
{
	[LibraryImport($"ULR.Hosting.dll", StringMarshalling = StringMarshalling.Custom, StringMarshallingCustomType = typeof(System.Runtime.InteropServices.Marshalling.AnsiStringMarshaller))]
	[UnmanagedCallConv(CallConvs = new Type[] { typeof(System.Runtime.CompilerServices.CallConvCdecl) })]
	private static partial HostingResult HostNativeAssembly(
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
		
		var res = HostNativeAssembly(assemblyName, debuggerPath, stdlibPath, argv.Length, argv);
	
		if (res.Error != 0) throw new ULRInternalException(res.Error);

		return res.RetCode;
	}
}