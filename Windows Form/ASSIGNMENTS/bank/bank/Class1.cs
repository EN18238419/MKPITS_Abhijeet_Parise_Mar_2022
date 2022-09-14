using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bank
{
    public abstract class Account
    {
        public long act_no;
        public int amount;
        public int bal = 1000;

        public abstract string deposit(int amount);

        public string withdrawl(int amount)
        {
            if(amount>bal)
            {
                return "Insufficient fund!";
            }
            else
            {
                bal = bal - amount;
                return "Amount withdrawlled successfully, balance is " + bal;
            }

        }
        public string show_balance()
        {
            return "Balance is " + bal;
        }
    }
    public class saving:Account
    {
        public override string deposit(int amount)
        {
            int interest = 100;
            bal = bal + interest + amount;
            return "Amount deposited successfully, balance is " + bal;
        }
    }
    public class current : Account
    {
        public override string deposit(int amount)
        {
            bal = bal + amount;
            return "Amount deposited successfully, balance is " + bal;
        }
    }
}
