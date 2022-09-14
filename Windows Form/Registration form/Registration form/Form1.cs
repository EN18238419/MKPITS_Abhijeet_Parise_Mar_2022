using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Registration_form
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
            StringBuilder str=new StringBuilder();
            str.Append("username: " + textBox1.Text + "\n");
            str.Append("password: " + textBox2.Text + "\n");
            string gender = "";
            if (radioButton1.Checked)
            {
                gender = radioButton1.Text;
            }
            else if (radioButton2.Checked)
            {
                gender = radioButton2.Text;
            }
            str.Append("Gender: "+gender+"\n");
            if(checkBox1.Checked)
            {
                str.Append("Course joined: " + checkBox1.Text+"\n");
            }
            if (checkBox2.Checked)
            {
                str.Append("Course joined: " + checkBox2.Text + "\n");
            }
            str.Append("City: " + comboBox1.Text);
            label6.Text= str.ToString();
        }
    }
}
