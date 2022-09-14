using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections;

namespace ArrayList_4
{
    internal class Program
    {
        static void Main(string[] args)
        {
            ArrayList arr=new ArrayList();
            arr.Add(11);
            arr.Add(12);
            arr.Add(13);
           foreach(int i in arr)
            {
                Console.WriteLine("number: "+i);
            }
        }
    }
}
