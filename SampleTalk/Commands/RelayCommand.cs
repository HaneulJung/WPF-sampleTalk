using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace SampleTalk.Commands
{
    public class RelayCommand<T> : ICommand
    {
        private readonly Action<T>? _execute;
        private readonly Predicate<T>? _canExecute;

        public RelayCommand(Action<T>? excute, Predicate<T>? canExecute = null)
        {
            _execute = excute;
            _canExecute = canExecute;
        }

        public event EventHandler? CanExecuteChanged
        {
            add { CommandManager.RequerySuggested += value; }
            remove { CommandManager.RequerySuggested -= value; }
        }

        public bool CanExecute(object? parameter)
        {
            return _canExecute?.Invoke((T)parameter!) ?? true;
        }

        public void Execute(object? parameter)
        {
            _execute?.Invoke((T)parameter!);
        }
    }
}
