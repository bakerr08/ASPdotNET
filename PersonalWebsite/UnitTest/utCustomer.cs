using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Business;

namespace UnitTest
{
    [TestClass]
    public class utCustomer
    {
        [TestMethod]
        public void GetCustomerFullNameByID()
        {
            Customer objCustomer = new Customer();
            string TestReturn = objCustomer.GetCustomerFullName(1);
            Assert.AreEqual("Winston Payne", TestReturn);
        }

        [TestMethod]
        public void GetCustomerFullNameByIDFail()
        {
            Customer objCustomer = new Customer();
            string TestReturn = objCustomer.GetCustomerFullName(-1);
            Assert.AreEqual("Winston Payne", TestReturn);
        }
    }
}
