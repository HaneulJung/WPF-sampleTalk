using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using SampleTalk.Services;
using SampleTalk.Stores;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace SampleTalk.ViewModels
{
    public partial class LoginControlViewModel : ObservableObject
    {
        [ObservableProperty]
        private ObservableCollection<string> _emails;

        public LoginControlViewModel()
        {
            Emails = new ObservableCollection<string>()
            {
                "test1@test.com",
                "test2@test.com",
            };
        }
    }
}
