using System;
using System.Linq;

namespace HelloWorld
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("This is a sample .NET app cross compiled to native. Watch me count to 10 :");
			Enumerable.Range(1, 10).ToList().ForEach(Console.WriteLine);
		}
	}
}
