using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace operation_on_two_number
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            int sum = 0, mul = 0,sub = 0;
            int n1=Convert.ToInt32(textBox1.Text);
            int n2 = Convert.ToInt32(textBox2.Text);
            string choice = textBox3.Text;
            switch(choice)
            {
                case "+":
                    sum=n1 + n2;
                    label4.Text = "Addition is "+sum;
                    break;
                 case "-":
                    sub = n1 - n2;
                    label4.Text = "Substraction is " + sub;
                    break;
                case "*":
                    mul = n1 * n2;
                    label4.Text = "Multiplication is " + mul;
                    break;
                default:
                    label4.Text = "invalid choice";
                    break;

            }

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}
