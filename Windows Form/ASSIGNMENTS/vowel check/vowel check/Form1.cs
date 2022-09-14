using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace vowel_check
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            char ch = Convert.ToChar(textBox1.Text);
            switch (ch)
            {
                case 'a':
                    label2.Text = "Enter character is vowel";
                    break;
                case 'e':
                    label2.Text = "Enter character is vowel";
                    break;
                case 'i':
                    label2.Text = "Enter character is vowel";
                    break;
                case 'o':
                    label2.Text = "Enter character is vowel";
                    break;
                case 'u':
                    label2.Text = "Enter character is vowel";
                    break;
                default:
                    label2.Text = "Enter character is not vowel";
                    break;

            }
        }
    }
}
