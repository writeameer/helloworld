using System;
using System.Linq;

namespace HelloWorld
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Console.WriteLine("This is a sample .NET app cross compiled to native");
			Enumerable.Range(1, 100).ToList().ForEach(Console.WriteLine);
		}
	}
}
