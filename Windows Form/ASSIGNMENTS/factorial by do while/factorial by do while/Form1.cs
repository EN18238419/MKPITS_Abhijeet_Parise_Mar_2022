using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace factorial_by_do_while
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int fact = 1;
            int num = Convert.ToInt32(textBox1.Text);
            int i = num;
            do
            {
                fact = fact * i;
                i--;
            }while(i> 0);
            label2.Text = "Factorial= " + fact;
        }
    }
}
