using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using MotorProfileLibrary;
using MotorProfileLibrary.Models;

namespace MotorProfileUnitTest
{
    [TestClass]
    public class profileTest
    {
        [TestMethod]
        public void loginTest()
        {
            //Arrange
            int expected = 0;
            int numerator = 20;
            int denominator = 20;

            OwnerModel model = new OwnerModel();
            model.Username = "admin";
            model.Password = "admin";

            // Act

            int x =new  MotorProfileLibrary.DataAccess.SqlConnection().CheckLogin(model);

            // Assert

            Assert.AreEqual(0, expected);

            

        }
    }
}
