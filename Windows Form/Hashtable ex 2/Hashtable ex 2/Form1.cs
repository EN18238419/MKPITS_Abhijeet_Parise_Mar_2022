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
namespace Hashtable_ex_2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        Hashtable ht=new Hashtable();
        private void button1_Click(object sender, EventArgs e)
        {
            ht.Add(textBox1.Text, textBox2.Text);
            textBox1.Clear();
            textBox2.Clear();
            textBox1.Focus();

        }

        private void button2_Click(object sender, EventArgs e)
        {
            StringBuilder sb1 = new StringBuilder();
            ICollection key = ht.Keys;
            foreach (string str in key)
            {
                sb1.Append("Album name: " + str + "\n");
            }
            label3.Text = sb1.ToString();

            ICollection val = ht.Values;
            StringBuilder sb2 = new StringBuilder();
            foreach (string str in val)
            {
                sb2.Append("Singer: " + str + "\n");
            }
            label4.Text = sb2.ToString();

            //StringBuilder sb = new StringBuilder();
            //ICollection key = ht.Keys;
            //foreach (string str in key)
            //{
            //    sb.Append("Album name: " + str + "\tSinger name: " + ht[str] + "\n");
            //}
            //label3.Text = sb.ToString();

        }

        private void button3_Click(object sender, EventArgs e)
        {

        }
    }
}
