using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections;
namespace Queue_example
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Queue q = new Queue();

            q.Enqueue('A');
            q.Enqueue('B');
            q.Enqueue('C');
            q.Enqueue('D');

            Console.Write("Current Queue:\t\t");
            foreach (char c in q)
            {
                Console.Write(c + "\t");
            }
            Console.WriteLine();
            // Adding element
            q.Enqueue('E');
            q.Enqueue('F');

            Console.WriteLine();
            Console.Write("Queue After Enqueue:\t");

            foreach (char c in q)
            {
                Console.Write(c + "\t");
            }

            Console.WriteLine();

            // Removing element
            q.Dequeue();
            q.Dequeue();
            q.Dequeue();
            Console.WriteLine();
            Console.Write("Queue After Dequeue:\t");
            foreach (char c in q)
            {
                Console.Write(c + "\t");
            }
            Console.WriteLine();
        }
    }
}
