using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Menu
{
    public partial class Sign_up_Form : Form
    {
        public Sign_up_Form()
        {
            InitializeComponent();
        }

        private void Sign_up_Form_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string f_name = textBox1.Text;
            string l_name = textBox2.Text;
            string email = textBox3.Text;
            long number = Convert.ToInt64(textBox4.Text);
            MessageBox.Show("Thanks! Your account has been successfully created");
        }
    }
}
