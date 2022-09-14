using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WindowsFormsApp4
{
    internal class Result
    {
        public int phy;
        public int che;
        public int math;

        public int calculate_total(int phy,int che,int math)
        {
            int total=phy+che+math;
            return total;
        }
         public float calculate_per(int total)
          {

              float per = (total / 300.0f) * 100;
              return  per;
          }
        public string calculate_grade(float per)
        {
            string grade = null;
            
            if(per>75)
            {
                grade = "Distinction";
            }
            else if(per>=60&&per<75)
            {
                grade = "First Division";
            }
            else if (per >= 40 && per < 60)
            {
                grade = "Second Division";
            }
            else
            {
                grade = "Fail";
            }
            return grade;
        }
    }
}
