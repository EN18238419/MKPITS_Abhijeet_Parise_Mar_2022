using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp2
{
    internal class bank
    {
        public long act_no;
        public int amount;
        public int bal=1000;
        public string deposit(int amount)
        {
            bal=bal+amount;
            return "Amount deposited successfully, balance is " + bal;
        }
        public string withdrawl( int amount)
        {
            if(amount>bal)
            {
                return "Insufficient fund! , money cannot withdrwal";
            }
            else
            {
                bal = bal - amount;
                return "Amount deposited successfully, balance is " + bal;
            }
           
        }
        public string showbalance()
        {
           
            return " Balance is " + bal;
        }
    }
}
