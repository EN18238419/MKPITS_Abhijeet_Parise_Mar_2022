using System;
using System.Collections.Generic;   //this is importntant namespace for running generic collection programme
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stack_generic
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Stack<int> st = new Stack<int>();
            st.Push(4);
            st.Push(5);
            st.Push(6);
            st.Push(1);
            st.Push(2);
            st.Push(3);

            Console.Write(st.Pop());
            Console.Write(st.Peek());   
            Console.WriteLine(st.Peek());    

            foreach (int i in st)
            {
                Console.WriteLine(i);
            }
        }
    }
}
