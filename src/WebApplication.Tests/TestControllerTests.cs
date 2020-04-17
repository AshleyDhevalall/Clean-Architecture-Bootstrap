using Microsoft.Extensions.Logging;
using NUnit.Framework;
using WebApplication.Controllers;

namespace WebApplication.Tests
{
    public class TestControllerTests
    {
        private TestController ctrl;
        private ILogger<TestController> logger;

        [SetUp]
        public void Setup()
        {
            ctrl = new TestController(logger);
        }

        [Test]
        public void Test1()
        {
            var result = ctrl.Get("hello");
            Assert.AreEqual("hello", result);
        }
    }
}