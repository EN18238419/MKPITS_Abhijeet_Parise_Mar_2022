using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections;
namespace Queue_example_2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Queue q = new Queue();

            q.Enqueue("AAA");
            q.Enqueue("BBB");
            q.Enqueue("CCC");
            q.Enqueue("DDD");

            Console.Write("Current queue:\t\t");
            foreach (string c in q)
            {
                Console.Write(c + "\t");
            }

            Console.WriteLine("\n");
            q.Enqueue("EEE");
            q.Enqueue("FFF");
            Console.Write("queue after enqueue:\t");
            foreach (string c in q)
            {
                Console.Write(c + "\t");
            }
            Console.WriteLine("\n");


            Console.WriteLine("Removing some values: ");
            string ch = (string)q.Dequeue();
            Console.WriteLine("The removed value: {0}", ch);

            ch = (string)q.Dequeue();
            Console.WriteLine("The removed value: {0}", ch);



        }
    }
}
