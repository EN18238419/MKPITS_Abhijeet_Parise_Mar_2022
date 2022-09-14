using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp6
{
    internal class Order
    {
        public int order_no;
        public string customer_name;
        public string product_name;
        public float price;
        public int quantity;

        public float total_amount(float price,int quantity)
        {
            this.price = price;
            this.quantity = quantity;
            return price*quantity;
        }
    }
}
