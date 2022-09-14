using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections;
namespace Stack_example
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Stack st = new Stack();

            st.Push('A');
            st.Push('B');
            st.Push('C');
            st.Push('D');

            Console.Write("Current stack:\t\t");
            foreach (char c in st)
            {
                Console.Write(c + "\t");
            }
            Console.WriteLine();
            // Adding element
            st.Push('E');
            st.Push('F');
            //Console.WriteLine("The next poppable value in stack: {0}", st.Peek());
            
            Console.Write("Stack After Pushing:\t");

            foreach (char c in st)
            {
                Console.Write(c + "\t");
            }

            Console.WriteLine();

            // Removing element
            st.Pop();
            st.Pop();
            st.Pop();

            Console.Write("Stack After Popping:\t");
            foreach (char c in st)
            {
                Console.Write(c + "\t");
            }
            Console.WriteLine();
        }
    }
}
