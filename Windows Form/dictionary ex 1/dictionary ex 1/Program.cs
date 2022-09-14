using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dictionary_ex_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Dictionary<string, string> domains = new Dictionary<string, string>();
            domains.Add("In", "India");
            domains.Add("sk", "Slovakia");
            domains.Add("us", "United States");
            domains.Add("ru", "Russia");
            domains.Add("hu", "Hungary");
            domains.Add("pl", "Poland");

            Console.WriteLine(domains["In"]);           //it will print value of an In  i.e. India
            Console.WriteLine(domains["pl"]);

            Console.WriteLine("Dictionary has {0} items",domains.Count);           // it will count total dictionary item
            Console.WriteLine("\nKeys of the dictionary:");
            List<string> keys = new List<string>(domains.Keys);                   // only to print keys
            foreach(string key in keys)
            {
                Console.WriteLine(key);
            }

            Console.WriteLine("\nValue of the dictionary:");
            List<string> val = new List<string>(domains.Values);                // only to print value
            foreach (string value in val)
            {
                Console.WriteLine(value);
            }

            Console.WriteLine("\nKeys and values of the dictionary:");
            foreach(KeyValuePair<string,string> pair in domains)               //to  print both keys and value
            {
                Console.WriteLine("key= {0}  value= {1}",pair.Key,pair.Value);
            }
            Console.WriteLine("\n");
        }
    }
}
