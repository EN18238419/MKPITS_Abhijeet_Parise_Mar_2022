using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Result res=new Result();
           // res.phy=Convert.ToInt32(textBox1.Text);
           // res.che = Convert.ToInt32(textBox2.Text);
           // res.math = Convert.ToInt32(textBox3.Text);
            int tot = res.calculate_total(Convert.ToInt32(textBox1.Text), Convert.ToInt32(textBox2.Text), Convert.ToInt32(textBox3.Text));
            label7.Text =tot.ToString();
            float perc = res.calculate_per(Convert.ToInt32(tot));
            label8.Text = perc.ToString();
            string gr = res.calculate_grade(Convert.ToSingle(perc));
            label9.Text = gr;
        }
    }
}
