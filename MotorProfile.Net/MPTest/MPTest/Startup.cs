using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MPTest.Startup))]
namespace MPTest
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
