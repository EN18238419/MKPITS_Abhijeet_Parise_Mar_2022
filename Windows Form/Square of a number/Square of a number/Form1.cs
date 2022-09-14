namespace Square_of_a_number
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int num=Convert.ToInt32(textBox1.Text);
            int sq = num * num;
            label2.Text = "Square= " + sq;
        }
    }
}