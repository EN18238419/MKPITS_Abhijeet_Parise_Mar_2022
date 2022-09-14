using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections;
namespace sorted_list_ex_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            SortedList sl=new SortedList();

            sl.Add("6", "fg");
            sl.Add("7", "gh");
            sl.Add("4", "de");
            sl.Add("5", "ef");
            sl.Add("1", "ab");
            sl.Add("2", "bc");
            sl.Add("3", "cd");

            if (sl.ContainsValue("hi"))
            {
                Console.WriteLine("This student name is already in the list");
            }
            else
            {
                sl.Add("8", "hi");
            }

             
            ICollection key = sl.Keys;

            foreach (string k in key)
            {
                Console.WriteLine(k + "\t" + sl[k]);
            }

        }
    }
}
