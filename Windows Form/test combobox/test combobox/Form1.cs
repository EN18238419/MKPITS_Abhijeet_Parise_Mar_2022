using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace test_combobox
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
            string name = textBox1.Text;
            int b_sal = Convert.ToInt32(textBox2.Text);
            float bonus = 0;
            string des = comboBox1.Text;
            switch (des)
            {
                case "manager":
                    bonus = b_sal * 0.55f;
                    break;
                case "clerk":
                    bonus = b_sal * 0.45f;
                    break;
                case "peon":
                    bonus = b_sal * 0.35f;
                    break;
            }
            float t_sal = b_sal + bonus;
            label4.Text = "Total Salary " + t_sal;
        }
    }
}
