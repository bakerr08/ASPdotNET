using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business
{
    public class WeightConvert
    {
        public double PoundsToOunces(double Pounds)
        {
            double Ounces = Pounds * 16;
            return Ounces;
        }

        public double OuncesToPounds(double Ounces)
        {
            double Pounds = Ounces / 16;
            return Ounces;
        }
    }

    
}
