namespace greater_number_among_two_num
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int num1 = Convert.ToInt32(textBox1.Text);
            int num2 = Convert.ToInt32(textBox2.Text);
            if(num1>num2)
            {
                label3.Text = "First number is greater";
            }
            else
            {
                label3.Text = "Second number is greater";
            }
        
           
        }
    }
}