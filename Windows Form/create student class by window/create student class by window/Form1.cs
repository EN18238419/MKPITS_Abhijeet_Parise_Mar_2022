using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Collections;  //

namespace create_student_class_by_window
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
            Student s1 = new Student(Convert.ToInt32(textBox1.Text), textBox2.Text);
            Student s2 = new Student(Convert.ToInt32(textBox3.Text), textBox4.Text);
            arr.Add(s1);
            arr.Add(s2);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            StringBuilder str = new StringBuilder();
            foreach (Student s in arr)
            {
                str.Append("rno " + s.roll_no + " name " + s.name + "\n");
            }
            label5.Text = str.ToString();

        }
    }
}
