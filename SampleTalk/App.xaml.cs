using Microsoft.Extensions.DependencyInjection;
using SampleTalk.Repositories;
using SampleTalk.Services;
using SampleTalk.Stores;
using SampleTalk.ViewModels;
using SampleTalk.Views;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace SampleTalk
{
    public partial class App : Application
    {
        public App()
        {
            Services = ConfigureServices();
            Startup += App_Startup;
        }

        private void App_Startup(object sender, StartupEventArgs e)
        {
            MainView? mainView = App.Current.Services.GetService<MainView>()!;
            mainView.Show();
        }

        public new static App Current => (App)Application.Current;

        public IServiceProvider Services { get; }

        private static IServiceProvider ConfigureServices()
        {
            ServiceCollection? services = new ServiceCollection();

            // Stores
            services.AddSingleton<MainNavigationStore>();

            // Services
            services.AddSingleton<INavigationService, NavigationService>();

            // Repositories
            services.AddTransient<IAccountRepository, AccountRepository>();

            // ViewModels
            services.AddTransient<MainViewModel>();
            services.AddTransient<LoginControlViewModel>();
            services.AddTransient<SignupControlViewModel>();
            services.AddTransient<ChangePwdControlViewModel>();
            services.AddTransient<FindAccountViewModel>();
            services.AddSingleton<MainNaviViewModel>();

            // Services
            //services.AddSingleton<ITestService, TestService>();

            // Views
            services.AddSingleton(s => new MainView()
            {
                DataContext = s.GetRequiredService<MainViewModel>()
            });

            return services.BuildServiceProvider();
        }
    }
}
