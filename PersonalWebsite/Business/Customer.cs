using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccess;

namespace Business
{
    public class Customer
    {
        public string GetCustomerFullName(int CustID)
        {
            dlCustomer CustomerData = new dlCustomer();
            return CustomerData.GetCustomerFullName(CustID);
        }


    }
}
