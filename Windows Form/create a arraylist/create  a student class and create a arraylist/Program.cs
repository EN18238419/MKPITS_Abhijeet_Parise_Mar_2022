using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Collections;

namespace create__a_student_class_and_create_a_arraylist
{
    public class Student
        {
        public int roll_no;
        public string name;

        public Student(int roll_no, string name)
        {
            this.roll_no = roll_no;
            this.name = name;
        }
    }
 internal class Program
    {
        static void Main(string[] args)
        {
            Student s1 = new Student(02, "Abhi");
            Student s2 = new Student(03, "Abhijeet");
            Student s3 = new Student(04, "Krishna");
            ArrayList arr=new ArrayList();
            arr.Add(s1);    
            arr.Add(s2);
            arr.Add(s3);

            foreach(Student s in arr)
            {
                Console.WriteLine("Roll number: "+s.roll_no );
                Console.WriteLine("Name: " + s.name);
            }
        }
    }
}
