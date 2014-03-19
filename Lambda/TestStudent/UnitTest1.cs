using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Lambda;
using System.Collections.Generic;

namespace TestStudent
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestStudentID  ()
        {
            List<int> TestID = new List<int>() { 123456789, 222222222, 8888, 1010101010 };
            Student ValidateObject = new Student();
            List<int> ResultIDs = ValidateObject.ValidSutdentIDs(TestID);

            Assert.IsTrue(ResultIDs.Contains(123456789));
            Assert.IsTrue(ResultIDs.Contains(222222222));
            Assert.IsFalse(ResultIDs.Contains(8888));
            Assert.IsFalse(ResultIDs.Contains(1010101010));
        }

        [TestMethod]
        public void TestLambdaStudentID()
        {
            List<int> TestID = new List<int>() { 123456789, 222222222, 8888, 1010101010 };
            Student ValidateObject = new Student();
            List<int> ResultIDs = ValidateObject.LambdaSutdentIDs(TestID);

            Assert.IsTrue(ResultIDs.Contains(123456789));
            Assert.IsTrue(ResultIDs.Contains(222222222));
            Assert.IsFalse(ResultIDs.Contains(8888));
            Assert.IsFalse(ResultIDs.Contains(1010101010));
        }
    }
}
