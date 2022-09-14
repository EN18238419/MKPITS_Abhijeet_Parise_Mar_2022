// 1 1 1
// 2 2 2
// 3 3 3

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace pattern_ex1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            StringBuilder str=new StringBuilder();
            for(int i=1; i<=3;i++)
            {
                for(int j=1; j<=3;j++)
                {
                    str.Append(i + " ");
                }
                str.Append("\n");
            }
            label1.Text=str.ToString();
        }
    }
}
