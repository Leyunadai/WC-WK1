using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(VoorbeeldEF.Startup))]
namespace VoorbeeldEF
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
