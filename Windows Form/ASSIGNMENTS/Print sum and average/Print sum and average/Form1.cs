using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Print_sum_and_average
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int sum = 0;
            float avg = 0;
            int n1 = Convert.ToInt32(textBox1.Text);
            int n2 = Convert.ToInt32(textBox2.Text);
            int n3 = Convert.ToInt32(textBox3.Text);
            int n4 = Convert.ToInt32(textBox4.Text);
            int n5 = Convert.ToInt32(textBox5.Text);
            int n6 = Convert.ToInt32(textBox6.Text);
            int n7 = Convert.ToInt32(textBox7.Text);
            int n8 = Convert.ToInt32(textBox8.Text);
            int n9 = Convert.ToInt32(textBox9.Text);
            int n10 = Convert.ToInt32(textBox10.Text);
            sum = n1 + n2 + n3 + n4 + n5 + n6 + n7 + n8 + n9 +n10;
            label11.Text = "Sum= " + sum;
            avg = (sum / 10.0f);
            label12.Text = "Average= " + avg;

        }
    }
}
