using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace dictionary_ex_2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        Dictionary<string,string> dic=new Dictionary<string,string>();
        private void button1_Click(object sender, EventArgs e)
        {
            dic.Add(textBox1.Text,textBox2.Text);
            textBox1.Clear();
            textBox2.Clear();
            textBox1.Focus();
            MessageBox.Show("added in dictionary");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            StringBuilder str= new StringBuilder();
            List<string> list = new List<string>(dic.Keys);
            foreach(string key in list)
            {
                str.Append("Key: " + key + "\n");
            }
            label3.Text = str.ToString();
            label4.Text = "";
            label5.Text = "";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            StringBuilder str = new StringBuilder();
            List<string> list = new List<string>(dic.Values);
            foreach (string val in list)
            {
                str.Append("Values: " + val + "\n");
            }
            label4.Text = str.ToString();
            label3.Text = "";
            label5.Text = "";
        }

        private void button4_Click(object sender, EventArgs e)
        {
            StringBuilder str = new StringBuilder();
         
            foreach (KeyValuePair<string,string> i in dic)
            {
                str.Append("key: "+i.Key+"  Value: "+i.Value+"\n");
            }
            label5.Text = str.ToString();
            label4.Text = "";
            label3.Text = "";
        }
    }
}
