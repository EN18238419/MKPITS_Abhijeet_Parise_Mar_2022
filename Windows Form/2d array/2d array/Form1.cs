using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _2d_array
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
        string[,] album=new string[1,2];
        StringBuilder str=new StringBuilder();
        private void button1_Click(object sender, EventArgs e)
        {
            album[0, 0] = textBox1.Text;
            album[0, 1] = textBox2.Text;
            str.Append("album name: " + album[0, 0] + "  Singer name:" + album[0, 1]);
            label3.Text=str.ToString();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
