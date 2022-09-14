using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp5
{
    internal class Employee
    {
        public int no;
        public string name;
        public int b_sal;

        public float Calculate_bonus(int b_sal)
        {
            float bonus=b_sal*0.45f;
            return bonus;
        }
        public float Calculate_total_sal(float bonus,int b_sal)
        {
            float t_sal = bonus + b_sal;
            return t_sal;
        }
    }
}
