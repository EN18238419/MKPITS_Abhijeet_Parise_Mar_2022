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

namespace WindowsFormsApp7
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        ArrayList arr = new ArrayList();
        student[] stud = new student[3];
        int i = 0;

        private void button1_Click(object sender, EventArgs e)
        {

            i++;
            if (i <= 3)
            {
                stud[i - 1] = new student(Convert.ToInt32(textBox1.Text), textBox2.Text);
                arr.Add(stud[i - 1]);
                textBox1.Clear();
                textBox2.Clear();
                textBox1.Focus();

            }
            if (i == 3)
            {
                textBox1.Enabled = false;
                textBox2.Enabled = false;
                button1.Enabled = false;
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            foreach (student s in arr)
            {
                sb.Append("Roll no: " + s.roll_no + "   Name: " + s.name + "\n");
            }
            label3.Text = sb.ToString();

        }
    }
}
