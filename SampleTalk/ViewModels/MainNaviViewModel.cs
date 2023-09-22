using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using SampleTalk.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleTalk.ViewModels
{
    public partial class MainNaviViewModel : ObservableObject
    {
        private readonly INavigationService _navigationService;

        [RelayCommand]
        public void NavigateChangePassword()
        {
            _navigationService.Navigate(NaviType.ChangePwd);
        }

        [RelayCommand]
        public void NavigateSignup()
        {
            _navigationService.Navigate(NaviType.Signup);
        }

        [RelayCommand]
        public void NavigateLogin()
        {
            _navigationService.Navigate(NaviType.Login);
        }

        [RelayCommand]
        public void NavigateFindAccount()
        {
            _navigationService.Navigate(NaviType.FindAccount);
        }

        public MainNaviViewModel(INavigationService navigationService)
        {
            _navigationService = navigationService;
        }
    }
}
