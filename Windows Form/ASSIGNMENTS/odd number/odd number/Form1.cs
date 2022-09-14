using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace odd_number
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
            StringBuilder str= new StringBuilder();
            int n_term = Convert.ToInt32(textBox1.Text);
            float sum = 0;
            int count = 1;
            str.Append("The odd numbers are:");
            for(int i = 1; i <=100; i++)
            {
                if(count<=n_term)
                {
                    if (i % 2 != 0)
                    {
                        str.Append(" " + i);
                        count++;
                        sum = sum + i;
                    }
                }
               
               
            }
           label2.Text = str.ToString();
           label3.Text = "The Sum of odd Natural Number upto " + n_term + " terms: " + sum;
        }
    }
}
