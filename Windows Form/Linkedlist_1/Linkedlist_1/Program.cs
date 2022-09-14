using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Linkedlist_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            LinkedList<int> list = new LinkedList<int>();
            list.AddLast(35);
            list.AddLast(33);
            list.AddLast(31);
            list.AddLast(32);
            list.AddFirst(38);
            list.AddFirst(48);
            list.AddFirst(28);

            LinkedListNode<int> node = list.Find(48);
            list.AddBefore(node, 99);

            foreach(int i in list)
            {
                Console.WriteLine(i);
            }
        }
    }
}
