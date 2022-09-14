using System.Text;
namespace print_from_1_to_that_no
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            StringBuilder str = new StringBuilder();
            int num = Convert.ToInt32(textBox1.Text);
            int i = 1;
            while (i <= num)
            {
                str.Append(i + "\n");
                i++;
            }
            label2.Text = str.ToString();
        }

    }

}