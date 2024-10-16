using System.Reflection;
using CommandLine;

[assembly: AssemblyVersion("0.0.0")]
[assembly: AssemblyInformationalVersion("0.0.0")]

namespace ULR;

public class Program
{
	class Options
	{
		[Option('n', "native", HelpText = "Load and run a natively-compiled ULR Assembly")]
		public bool UseNativeAssembly { get; set; } = false;

		[Option('d', "debugger", HelpText = "Specify a path to a custom debugger")]
		public string DebuggerPath { get; set; } = $"ULR.Debugging.dll";

		[Option('s', "stdlib", HelpText = "Specify a path to the standard library")]
		public string StdlibPath { get; set; } = $"ULR.CoreLib.Native.dll";

		[Value(0, HelpText = "Path to the assembly to run", Required = true)]
		public string AssemblyName { get; set; } = null!;
	
		[Option('a', "args", HelpText = "Arguments to pass to program")]
		public IEnumerable<string> ProgramArguments { get; set; } = [];
	}

	static int Main(string[] args)
	{
		Parser.Default
			.ParseArguments<Options>(args)
			.WithParsed((options) => {
				int ret;

				if (options.UseNativeAssembly)
				{
					ret = ULRHost.HostNative(
						options.AssemblyName,
						options.DebuggerPath,
						options.StdlibPath,
						options.ProgramArguments
					);
				}
				else
				{
					ret = ULRHost.HostNative( // TODO: change to HostJIT
						options.AssemblyName,
						options.DebuggerPath,
						options.StdlibPath,
						options.ProgramArguments
					);
				}
		
				Environment.Exit(ret);
			});

		return 0;
	}
}