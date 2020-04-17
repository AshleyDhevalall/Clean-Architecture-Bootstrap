using Microsoft.Extensions.Logging;
using NUnit.Framework;
using WebApplication.Controllers;

namespace WebApplication.Tests
{
    public class TestControllerTests
    {
        private TestController ctrl;

        [SetUp]
        public void Setup()
        {
            ctrl = new TestController();
        }

        [Test]
        public void Test1()
        {
            var result = ctrl.Get("hello");
            Assert.AreEqual("hello", result);
        }
    }
}