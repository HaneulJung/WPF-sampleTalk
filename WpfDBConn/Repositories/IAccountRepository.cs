using System.Collections.Generic;
using WpfDBConn.Models;

namespace WpfDBConn.Repositories
{
    public interface IAccountRepository
    {
        long Insert(Account account);
        void Update(Account account);
        void Delete(int id);
        List<Account> GetAll();
    }
}