using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace minor_adult_and_old_checking
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            int age = Convert.ToInt32(textBox1.Text);
            if (age < 18)
            {
                label3.Text = "Person is minor";

            }
            else if (age >= 18 && age <= 40)
            {
                label3.Text = "Person is Adult";
            }
            else
            {
                label3.Text = "Person is old";
            }


        }
    }
}
