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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void registerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Register_form r=new Register_form();
            r.MdiParent=this;
            r.Show();
        }

        private void accountToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Sign_up_Form s=new Sign_up_Form();
            s.MdiParent=this;
            s.Show();
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void registerToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Register_form r = new Register_form();
            r.MdiParent = this;
            r.Show();
        }

        private void signUpToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Sign_up_Form s = new Sign_up_Form();
            s.MdiParent = this;
            s.Show();
        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            Register_form r = new Register_form();
            r.MdiParent = this;
            r.Show();
        }

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            Sign_up_Form s = new Sign_up_Form();
            s.MdiParent = this;
            s.Show();
        }

        private void toolStripButton3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            
                toolStripStatusLabel1.Text = DateTime.Now.ToString();
            

        }
    }
}
