using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace List_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<string> Alpha = new List<string>();
            
            Alpha.Add("D");
            Alpha.Add("E");
            Alpha.Add("F");
            Alpha.Add("A");
            Alpha.Add("B");
            Alpha.Add("C");

            Console.WriteLine(Alpha.Contains("D"));      //  it will show the true value
            Console.WriteLine(Alpha[1]);                 //  it will show E alphabet
            Console.WriteLine(Alpha[3]);                 //  it will show A alphabet
            Console.WriteLine(Alpha.Contains("G"));      //  it will show the false value
            Alpha.Insert(0, "I");                        // it will show I on index 0
           
            foreach (string str in Alpha)
            {
                Console.WriteLine(str);
            }
            Console.WriteLine("After sorting:");
            Alpha.Sort();                                                                          
            foreach (string str in Alpha)
            {
                Console.WriteLine(str);
            }



        }
    }
}
