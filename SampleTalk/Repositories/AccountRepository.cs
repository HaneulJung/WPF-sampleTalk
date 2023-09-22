using CommonLib.Database;
using SampleTalk.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleTalk.Repositories
{
    public class AccountRepository : RepositoryBase, IAccountRepository
    {
        public long Save(Account account)
        {
            string query = "" +
                    "INSERT account SET\n" +
                    "  id = @id\n" +
                    ", pwd = @pwd\n" +
                    ", email = @email\n" +
                    ", nickname = @nickname\n" +
                    ", cell_phone = @cell_phone";

            using (MySqlDb db = AccountDb)
            {
                return db.Execute(query, new SqlParameter[]
                 {
                      new SqlParameter("@id", account.Id),
                      new SqlParameter("@pwd", account.Pwd),
                      new SqlParameter("@email", account.Email),
                      new SqlParameter("@nickname", account.Nickname),
                      new SqlParameter("@cell_phone", account.CellPhone),
                 });
            }
        }

        public bool ExistEmail(string email)
        {
            string query = "" +
                "SELECT 1 FROM account\n" +
                "WHERE email = @email";

            using MySqlDb db = AccountDb;
            using var dr = db.GetReader(query, new SqlParameter[] { new SqlParameter("@email", email) });
            return dr.Read();
        }
    }
}
