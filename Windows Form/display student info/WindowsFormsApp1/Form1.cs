using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
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

        private void button1_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            Student stu = new Student();  
            stu.roll_no=Convert.ToInt32(textBox1.Text);
            stu.name = textBox2.Text;
            stu.email = textBox3.Text;
            stu.mob_no=Convert.ToInt64(textBox4.Text);
            sb.Append("Roll no: " + stu.roll_no+"\n");
            sb.Append("Name: " + stu.name + "\n");
            sb.Append("Email: " + stu.email + "\n");
            sb.Append("Mob No: " + stu.mob_no + "\n");
            label5.Text = sb.ToString();
        }
    }
}
