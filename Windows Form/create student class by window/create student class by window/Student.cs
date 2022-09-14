using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace create_student_class_by_window
{
    internal class Student
    {
        public int roll_no;
        public string name;
       

        public Student(int roll_no, string name)
        {
            this.roll_no = roll_no;
            this.name = name;
        }
    }
}
