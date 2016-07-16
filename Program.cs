using System;
using System.Linq;

namespace HelloWorld
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			Enumerable.Range(1, 100).ToList().ForEach(Console.WriteLine);
		}
	}
}
