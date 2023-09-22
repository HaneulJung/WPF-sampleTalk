using SampleTalk.ViewModels;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfLib.Controls.Enums;

namespace SampleTalk.Stores
{
    public class MainNavigationStore
    {
        public INotifyPropertyChanged CurrentViewModel
        {
            set => CurrentViewModelChanged?.Invoke(value);
        }

        public SlideType SlideType
        {
            set => SlideTypeChanged?.Invoke(value);
        }

        public event Action<INotifyPropertyChanged>? CurrentViewModelChanged;
        public event Action<SlideType>? SlideTypeChanged;
    }
}
