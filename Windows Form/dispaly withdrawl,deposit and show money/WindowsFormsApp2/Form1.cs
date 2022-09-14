using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        bank b = new bank();
        private void button1_Click(object sender, EventArgs e)
        {
            b.act_no = Convert.ToInt64(textBox1.Text);
            string res = b.deposit(Convert.ToInt32(textBox2.Text));
            label3.Text = res;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            b.act_no = Convert.ToInt64(textBox1.Text);
            string res = b.withdrawl(Convert.ToInt32(textBox2.Text));
            label3.Text = res;

        }

        private void button3_Click(object sender, EventArgs e)
        {
            b.act_no = Convert.ToInt64(textBox1.Text);
            string res = b.showbalance();
            label3.Text = "Account no: "+b.act_no+ ": "+res;
        }
    }
}
