using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Dic_employee
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        Dictionary<int, Employee> emp = new Dictionary<int, Employee>();
        private void button1_Click(object sender, EventArgs e)
        {
            Employee emp1 = new Employee(Convert.ToInt32(textBox1.Text), textBox2.Text);
            Employee emp2 = new Employee(Convert.ToInt32(textBox3.Text), textBox4.Text);
            emp.Add(emp1.Emp_id, emp1);
            emp.Add(emp2.Emp_id, emp2);


        }

        private void button2_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            foreach (KeyValuePair<int, Employee> kv in emp)
            {
                sb.Append("Employee id: " + kv.Key + "     Employee name: " + kv.Value.Emp_name + "\n");
            }
            label5.Text = sb.ToString();

        }
    }
}
