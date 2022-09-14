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

namespace ArrayList_3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        ArrayList arr = new ArrayList();
        private void button1_Click(object sender, EventArgs e)
        {
            arr.Add(textBox1.Text);
            textBox1.Clear();
            textBox1.Focus();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            StringBuilder str = new StringBuilder();
            MessageBox.Show("Capacity:  " + arr.Capacity);
            MessageBox.Show("Count: " + arr.Count);

            foreach (object o in arr)
            {
                str.Append("Name: " + o + " \n");
            }
            label2.Text = str.ToString();
        }
    }
}
