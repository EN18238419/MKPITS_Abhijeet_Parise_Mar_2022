using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp6
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Order order = new Order();
            order.order_no=Convert.ToInt32(textBox1.Text);
            order.customer_name = textBox2.Text;
            order.product_name = textBox3.Text;
            
            label10.Text = order.order_no.ToString();
            label11.Text = order.customer_name;
            label12.Text=order.product_name;
            float total_amount= order.total_amount(Convert.ToSingle(textBox4.Text),Convert.ToInt32(textBox5.Text));
            label13.Text= total_amount.ToString();  
        }
    }
}
