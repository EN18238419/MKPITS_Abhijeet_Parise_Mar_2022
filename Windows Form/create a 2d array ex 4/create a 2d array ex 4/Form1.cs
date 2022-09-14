using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace create_a_2d_array_ex_4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        string[,] array = new string[2, 2];
        StringBuilder str= new StringBuilder();
        int i = 0;
        int j = 0;
        private void button1_Click(object sender, EventArgs e)
        {
            if(i<2)
            {
                array[i, j] = textBox1.Text;
                array[i, j + 1] = textBox2.Text;
                i++;
                textBox1.Clear();
                textBox2.Clear();
                textBox1.Focus();

                if (i==2)
                {
                    textBox1.Enabled = false;
                    textBox2.Enabled = false;
                    button1.Enabled = false;
                    button2.Enabled = true;

                }
            }
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            for (i = 0; i < 2; i++)
            {
                for (j = 0; j < 2; j++)
                {
                    str.Append(array[i, j] + "   ");
                }
                str.Append("\n");
            }
            label3.Text = str.ToString();

        }
    }
}
