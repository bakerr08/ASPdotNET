using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Business;

namespace UnitTest
{
    [TestClass]
    public class utWeightConvert
    {
        [TestMethod]
        public void TestPoundsToOuncesPass()
        {
            WeightConvert wtConverter = new WeightConvert();
            double TotalPounds = wtConverter.OuncesToPounds(16);
            Assert.AreEqual(1, TotalPounds);
        }
    }
}
