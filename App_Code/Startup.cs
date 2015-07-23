using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Project_Blog.Startup))]
namespace Project_Blog
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
