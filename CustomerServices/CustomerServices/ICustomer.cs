using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace CustomerServices
{
    [ServiceContract]
    public interface ICustomer
    {
        [OperationContract]
        void AddCustomer(CustomerData NewCustomer);

        [OperationContract]
        void DeleteCustomer(int CustomerID);

        [OperationContract]
        List<CustomerData> GetCustomers();
    }
}
