using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections;

namespace ArrayList_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ArrayList arr = new ArrayList();
            arr.Add("Krishna");
            arr.Add("Abhijeet");
            arr.Add("Pardeep");

            foreach(Object obj in arr)
            {
                Console.WriteLine("Student name: "+obj);
            }
        }
    }
}
