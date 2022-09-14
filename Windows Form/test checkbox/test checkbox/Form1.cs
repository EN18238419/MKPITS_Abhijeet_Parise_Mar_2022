using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace test_checkbox
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string emp_name = textBox1.Text;
            float b_sal=Convert.ToSingle(textBox2.Text);
            float bonus = b_sal * 0.45f;
            float t_sal = b_sal + bonus;
            label3.Text = "";
            label4.Text = "";
            if (checkBox1.Checked)
            {
                label3.Text = "Bonus "+bonus;
            }
            if (checkBox2.Checked)
            {
                label4.Text = "Total salary " + t_sal;
            }
        }
    }
}
