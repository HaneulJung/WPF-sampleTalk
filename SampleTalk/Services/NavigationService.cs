using SampleTalk.Stores;
using SampleTalk.ViewModels;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfLib.Controls.Enums;

namespace SampleTalk.Services
{
    public class NavigationService : INavigationService
    {
        private readonly MainNavigationStore _mainNavigationStore;

        private void MainNavigate(SlideType slideType, Type type)
        {
            _mainNavigationStore.SlideType = slideType;
            _mainNavigationStore.CurrentViewModel = (INotifyPropertyChanged)App.Current.Services.GetService(type)!;
        }

        public NavigationService(MainNavigationStore mainNavigationStore)
        {
            _mainNavigationStore = mainNavigationStore;
        }

        public void Navigate(NaviType naviType)
        {
            switch (naviType)
            {
                case NaviType.Signup:
                    MainNavigate(SlideType.LeftToRight, typeof(SignupControlViewModel));
                    break;
                case NaviType.Login:
                    MainNavigate(SlideType.TopToBottom, typeof(LoginControlViewModel));
                    break;
                case NaviType.FindAccount:
                    MainNavigate(SlideType.BottomToTop, typeof(FindAccountViewModel));
                    break;
                case NaviType.ChangePwd:
                    MainNavigate(SlideType.RightToLeft, typeof(ChangePwdControlViewModel));
                    break;
            }
        }
    }
}
