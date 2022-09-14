using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp3
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void trackBar1_Scroll(object sender, EventArgs e)
        {
            label1.Text=trackBar1.Value.ToString();
        }

        private void label2_Click(object sender, EventArgs e)
        {
            webBrowser1.Navigate(textBox1.Text);
        }

        private void label3_Click(object sender, EventArgs e)
        {
            webBrowser1.GoBack();
        }

        private void label4_Click(object sender, EventArgs e)
        {
            webBrowser1.GoForward();
        }

        private void label5_Click(object sender, EventArgs e)
        {
            webBrowser1.GoHome();
        }
    }
}
