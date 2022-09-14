using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections;
namespace ArrayList_example_with_array_sort
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ArrayList arr=new ArrayList();
            arr.Add(21);
            arr.Add(12);
            arr.Add(32);
            arr.Add(14);
            arr.Add(5);
            arr.Add(60);
            arr.Add(7);

            Console.WriteLine("Current List:\t");
            foreach ( int i in arr)
            {
                Console.WriteLine(i);
            }
            Console.WriteLine("\n");
            arr.Sort();
            Console.WriteLine("List after sorting:\t");
            foreach (int i in arr)
            {
                Console.WriteLine(i);
            }
            Console.WriteLine();
            
        }
    }
}
