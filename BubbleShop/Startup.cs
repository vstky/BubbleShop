using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BubbleShop.Startup))]
namespace BubbleShop
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
