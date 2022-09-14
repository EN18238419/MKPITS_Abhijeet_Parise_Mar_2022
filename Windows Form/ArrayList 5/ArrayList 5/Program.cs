using System;

using System.Collections;   // this must be used for arraylist class

namespace ArrayList_5
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ArrayList arr = new ArrayList();
            arr.Add(21);
            arr.Add(17);
            arr.Add(32);
            Console.WriteLine("without sorting");
            foreach (int i in arr)
            {
                Console.WriteLine("number:" + i);
            }
            Console.WriteLine();
            Console.WriteLine("with sorting");
            arr.Sort();
            foreach (int i in arr)
            {
                Console.WriteLine("number:" + i);
            }

        }
    }
}
