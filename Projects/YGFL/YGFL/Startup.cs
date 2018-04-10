using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(YGFL.Startup))]
namespace YGFL
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
