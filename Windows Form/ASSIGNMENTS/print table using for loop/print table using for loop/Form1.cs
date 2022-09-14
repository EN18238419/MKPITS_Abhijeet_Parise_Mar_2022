using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace print_table_using_for_loop
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int num = Convert.ToInt32(textBox1.Text);
            StringBuilder str = new StringBuilder();
            for(int i=1;i<=10;i++)
            {
                int mul = num * i;
                str.Append(num + " * " + i + " = " + mul + "\n");
                
            } 
            label2.Text = str.ToString();
        }
    }
}
