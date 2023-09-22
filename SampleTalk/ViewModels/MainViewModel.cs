using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using SampleTalk.Controls;
using SampleTalk.Services;
using SampleTalk.Stores;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfLib.Controls.Enums;

namespace SampleTalk.ViewModels
{
    public partial class MainViewModel : ObservableObject
    {
        [ObservableProperty]
        private INotifyPropertyChanged _currentViewModel = default!;

        [ObservableProperty]
        private SlideType _slideType = default!;

        private void CurrentViewModelChanged(INotifyPropertyChanged viewModel)
        {
            CurrentViewModel = viewModel;
        }

        public MainViewModel(MainNavigationStore mainNavigationStore)
        {
            mainNavigationStore.CurrentViewModelChanged += CurrentViewModelChanged;
            mainNavigationStore.SlideTypeChanged += SlideTypeChanged;
            mainNavigationStore.CurrentViewModel = (INotifyPropertyChanged)App.Current.Services.GetService(typeof(LoginControlViewModel))!;
        }

        private void SlideTypeChanged(SlideType slideType)
        {
            SlideType = slideType;
        }
    }
}
