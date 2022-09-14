using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections;

namespace ArrayList_6
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ArrayList arr = new ArrayList();
            arr.Add(21);
            arr.Add(17);
            arr.Add(32);
            Console.WriteLine("given arraylist");
            foreach (int i in arr)
            {
                Console.WriteLine("number:" + i);
            }
            Console.WriteLine();
    
           /* Console.WriteLine("array position : ");
            int index = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("value to insert: ");
            int val = Convert.ToInt32(Console.ReadLine());
            arr.Insert(index, val);*/
            Console.WriteLine("arraylist after insertion");
            arr.Insert(1,75);

            foreach (int i in arr)
            {
                Console.WriteLine("number:" + i);
            }
        }
    }
}
