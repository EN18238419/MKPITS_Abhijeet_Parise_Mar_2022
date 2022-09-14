using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections;
namespace product_class_by_arralist
{
    public class Product
    {
        public int product_id;
        public string product_name;
        public int product_rate;

        public Product(int product_id, string product_name, int product_rate)
        {
            this.product_id = product_id;
            this.product_name = product_name;
            this.product_rate = product_rate;
        }   
    }
    internal class Program
    {
        static void Main(string[] args)
        {
            ArrayList arr=new ArrayList();
            Product prod_1 = new Product(111, "Complan", 200);
            Product prod_2 = new Product(222, "Horlics", 150);
            Product prod_3 = new Product(333, "Born vita",130);

            arr.Add(prod_1);
            arr.Add(prod_2);
            arr.Add(prod_3);

            foreach(Product prod in arr)
            {
                Console.WriteLine("Product id: "+prod.product_id+"\tProduct name: "+prod.product_name+"\tProduct rate: "+prod.product_rate);
            }
        }
    }
}
