using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using DataAccess;
using System.Data;

namespace CustomerServices
{
    public class Customer : ICustomer
    {
        public void AddCustomer(CustomerData NewCustomer)
        {
            DLCustomer oCustomer = new DLCustomer();
            oCustomer.AddCustomer(NewCustomer.FirstName,
                                  NewCustomer.LastName,
                                  NewCustomer.Address,
                                  NewCustomer.City,
                                  NewCustomer.State,
                                  NewCustomer.Zip,
                                  NewCustomer.Phone,
                                  NewCustomer.Email);
        }

        public void DeleteCustomer(int CustomerID)
        {
            DLCustomer oCustomer = new DLCustomer();
            oCustomer.DeleteCustomer(CustomerID);
        }

        public List<CustomerData> GetCustomers()
        {
            List<CustomerData> CustomerList = new List<CustomerData>();
            DLCustomer oCustomer = new DLCustomer();
            DataTable dt = oCustomer.GetCustomers();

            foreach(DataRow row in dt.Rows)
            {
                CustomerData Customer = new CustomerData();
                Customer.CustomerID = int.Parse(row["CustomerID"].ToString());
                Customer.FirstName = row["FirstName"].ToString();
                Customer.LastName = row["LastName"].ToString();
                Customer.Address = row["Address"].ToString();
                Customer.City = row["City"].ToString();
                Customer.State = row["State"].ToString();
                Customer.Zip = row["Zip"].ToString();
                Customer.Phone = row["Phone"].ToString();
                Customer.Email = row["Email"].ToString();
                CustomerList.Add(Customer);
            }

            return CustomerList;
        }
        
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }
    }
}
