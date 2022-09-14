using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dic_employee
{
     class Employee
    {
        public int Emp_id { get; set; } 
        public string Emp_name { get; set; }

        public Employee(int id,string name)
        {
            Emp_id = id;
            Emp_name = name;
        }
    }
}
