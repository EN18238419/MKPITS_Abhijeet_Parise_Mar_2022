using System;
using System.Collections.Generic;  //you must have to used
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace queue_generic
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Queue<string> msg=new Queue<string>();
            msg.Enqueue("messege_1");
            msg.Enqueue("messege_4");
            msg.Enqueue("messege_2");
            msg.Enqueue("messege_7");
            msg.Enqueue("messege_9");
            msg.Enqueue("messege_3");

            Console.Write(msg.Dequeue()+"\t");
            Console.Write(msg.Peek()+"\t");
            Console.WriteLine(msg.Peek()+"\t");

            foreach(string item in msg)
            {
                Console.WriteLine(item);
            }
        }
    }
}
