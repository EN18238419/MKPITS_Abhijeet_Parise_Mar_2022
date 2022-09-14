using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections;
namespace Hashtable_ex_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Hashtable ht=new Hashtable();
            ht.Add("1", "ab");
            ht.Add("2", "bc");
            ht.Add("3", "cd");
            ht.Add("4", "de");
            ht.Add("5", "ef"); 
            ht.Add("6", "gh");
            ht.Add("7", "ij");


            if (ht.ContainsValue("jk"))
            {
                Console.WriteLine("This student name is already in the list");
            }
            else
            {
                ht.Add("8", "jk");
            }

            ICollection key = ht.Keys;      //get collection of keys here
            foreach (string k in key)
            {
                Console.WriteLine(k+" : " + ht[k]);
            }
            Console.ReadKey();
        }
    }
}
