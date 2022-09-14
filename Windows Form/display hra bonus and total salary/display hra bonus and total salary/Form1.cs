namespace display_hra_bonus_and_total_salary
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string emp_name = textBox1.Text;
            int b_sal = Convert.ToInt32(textBox2.Text);
            string des = textBox3.Text;
            float hra = 0;
            float bonus = 0;
            float total_sal = 0;
            switch (des)
            {
                case "manager":
                    hra = b_sal * 0.50f;
                    bonus = b_sal * 0.30f;
                    break;
                case "clerk":
                    hra = b_sal * 0.25f;
                    bonus = b_sal * 0.2f;
                    break;
                case "peon":
                    hra = b_sal * 0.20f;
                    bonus = b_sal * 0.2f;
                    break;
            }
            label4.Text = "hra= " + hra;
            label5.Text = "bonus= " + bonus;
            total_sal = hra + bonus + b_sal;
            label6.Text = "total sal= " + total_sal;
        

        }
    }
}