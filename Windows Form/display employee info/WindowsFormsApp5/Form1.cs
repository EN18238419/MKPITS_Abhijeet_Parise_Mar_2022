using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp5
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Employee emp = new Employee();
            float bonus=emp.Calculate_bonus(Convert.ToInt32(textBox3.Text));
            float t_sal=emp.Calculate_total_sal(Convert.ToSingle(bonus), Convert.ToInt32(textBox3.Text));
            emp.no=Convert.ToInt32(textBox1.Text);
            emp.name = textBox2.Text;
            label7.Text = emp.no.ToString();
            label8.Text = emp.name;
            label9.Text = t_sal.ToString();
        }
    }
}
