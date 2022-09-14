using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Create_2d_array_ex2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            StringBuilder str = new StringBuilder();
            string[,] name = new string[2, 2];
            name[0, 0] = textBox1.Text;
            name[0, 1] = textBox2.Text;
            name[1, 0] = textBox3.Text;
            name[1, 1] = textBox4.Text;
            str.Append("Album name: " + name[0, 0] + "  singer name: " + name[0, 1]+"\n");
            str.Append("Album name: " + name[1, 0] + "  singer name: " + name[1, 1]);
            label5.Text=str.ToString();
        }
    }
}
