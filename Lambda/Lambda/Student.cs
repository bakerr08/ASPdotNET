using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lambda
{
    public class Student
    {
        public List<int> ValidSutdentIDs(List<int> IDList)
        {
            List<int> ValidIDs = new List<int>();

            foreach (int ID in IDList)
            {
                if (ID.ToString().Length == 9)
                {
                    ValidIDs.Add(ID);
                }
            }

            return ValidIDs;
        }

        public List<int> LambdaSutdentIDs(List<int> IDList)
        {
            List<int> ValidIDs = IDList.Where(n => n.ToString().Length == 9).ToList();

            return ValidIDs;
        }
    }
}
