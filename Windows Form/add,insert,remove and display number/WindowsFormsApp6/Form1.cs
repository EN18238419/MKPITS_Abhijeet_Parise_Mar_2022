using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Collections;

namespace WindowsFormsApp6
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        ArrayList arr=new ArrayList();
        private void button1_Click(object sender, EventArgs e)
        {
            arr.Add(textBox1.Text);
            textBox1.Clear();
            textBox1.Focus();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            StringBuilder str=new StringBuilder();
            foreach(string s in arr)
            {
                str.Append("Number: "+s+"\n");
            }
            label2.Text = str.ToString();   
        }

        private void button3_Click(object sender, EventArgs e)
        {
            arr.Insert(2, textBox1.Text);
            textBox1.Clear();
            textBox1.Focus();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            arr.Remove(textBox1.Text);
            textBox1.Clear();
            textBox1.Focus();

        }
    }
}
