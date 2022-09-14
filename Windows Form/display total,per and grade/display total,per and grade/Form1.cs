namespace display_total_per_and_grade
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int sub1 = Convert.ToInt32(textBox1.Text);
            int sub2 = Convert.ToInt32(textBox2.Text);
            int sub3 = Convert.ToInt32(textBox3.Text);
            int total = sub1 + sub2 + sub3;
            label4.Text = "Total : " + total;
            float per = (total / 300.0f) * 100.0f;
            label5.Text = "Percentage : " + per;
            if (per >= 75)
            {
                label6.Text = "Grade : distinction";
            }
            else if (per >= 60 && per < 75)
            {
                label6.Text = "Grade : first";
            }
            else if (per >= 40 && per < 60)
            {
                label6.Text = "Grade : second";
            }
            else
            {
                label6.Text = "Grade : fail";
            }

        }
    }
}