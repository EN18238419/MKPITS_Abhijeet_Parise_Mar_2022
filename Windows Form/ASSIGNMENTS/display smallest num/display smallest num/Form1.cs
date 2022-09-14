using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace display_smallest_num
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            int n1=Convert.ToInt32(textBox1.Text);
            int n2 = Convert.ToInt32(textBox2.Text);
            if(n1<n2)
            {
                label4.Text = "Smallest number " + n1;
            }
            else
            {
                label4.Text = "Smallest number " + n2;
            }
        }
    }
}
