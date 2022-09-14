using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp3
{
    abstract class Account
    {
        public long act_no;
        public int bal = 2000;
        public int amount = 0;
        public abstract string deposit(int amount);

        public string withdrawl(int amount)
        {
            if (amount > bal)
            {
                return "Insufficient Fund!, Balance is: " + bal;
            }
            else
            {
                bal = bal - amount;
                return "Amount withdrawl successfully, Balance is: " + bal;
            }


        }
        public string showbalance()
        {
            return "Balance is: " + bal;
        }
    }
        class saving:Account
        {
            public override string deposit(int amount)
            {
                int interest = 300;
                bal = bal + amount + interest;
                return "Amount deposited successfully, balance is: " + bal;
            }
        }
    class current : Account
    {
        public override string deposit(int amount)
        {
            bal = bal + amount;
            return "Amount deposited successfully, balance is: " + bal;
        }
    }   
    
}
