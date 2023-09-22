using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using WpfDBConn.Commands;
using MySql.Data.MySqlClient;
using System.Windows;
using System.Data;
using WpfDBConn.Repositories;
using WpfDBConn.Models;

namespace WpfDBConn.ViewModels
{
    public class MainViewModel : ViewModelBase
    {
        private MySqlConnection _conn = default!;
        private IAccountRepository _accountRepository;
        private List<Account> _accounts = default!;

        private void Connection(object _)
        {
            
        }

        private void Insert(object _)
        {
            Account account = new Account()
            {
                Email = "test123@naver.com",
                Pwd = "sadfafd",
                NickName = "sample",
                CellPhone = "01012345678"
            };

            _accountRepository.Insert(account);
        }

        private void Update(object _)
        {
            Account account = new Account()
            {
                Id = 1,
                Email = "abcd@naver.com",
                Pwd = "qwer",
                NickName = "asdf",
                CellPhone = "01098765432"
            };

            _accountRepository.Update(account);
        }

        private void Delete(object _)
        {
            _accountRepository.Delete(3);
        }

        private void Select(object _)
        {
            Accounts = _accountRepository.GetAll();
        }

        public MainViewModel(IAccountRepository accountRepository)
        {
            _accountRepository = accountRepository;
        }

        public List<Account> Accounts
        {
            get => _accounts;
            set
            {
                if (_accounts != value)
                {
                    _accounts = value;
                    OnPropertyChanged();
                }
            }
        }

        public ICommand ConnectionCommand => new RelayCommand<object>(Connection);
        public ICommand InsertCommand => new RelayCommand<object>(Insert);
        public ICommand UpdateCommand => new RelayCommand<object>(Update);
        public ICommand DeleteCommand => new RelayCommand<object>(Delete);
        public ICommand SelectCommand => new RelayCommand<object>(Select);
    }
}
