using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections;

namespace Employee_class_by_ArrayList
{
    public class Employee
    {
        public int id;
        public string emp_name;
        public int bonus;
        public Employee(int id, string emp_name, int bonus)
        {
            this.id = id;
            this.emp_name = emp_name;
            this.bonus = bonus;
        }
    }
    public class Program
    {
        static void Main(string[] args)
        {
           ArrayList arr=new ArrayList();
            Employee emp_1 = new Employee(123, "Abhijeet", 45000);
            Employee emp_2 = new Employee(124, "Abhijit", 55000);
            Employee emp_3 = new Employee(125, "Krishna", 65000);
            Employee emp_4 = new Employee(128, "Pardeep", 85000);

            arr.Add(emp_1);
            arr.Add(emp_2);
            arr.Add(emp_3);
            arr.Add(emp_4);

            foreach(Employee item in arr)
            {
                Console.WriteLine("Employee id: "+item.id +"    Employee name: "+ item.emp_name+"     Employee Bonus: "+item.bonus);
            }
        }
    }
}
