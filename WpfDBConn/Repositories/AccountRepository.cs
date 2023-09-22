using CommonLib.Database;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfDBConn.Models;

namespace WpfDBConn.Repositories
{
    public class AccountRepository : RepositoryBase, IAccountRepository
    {
        public long Insert(Account account)
        {
            string query = "" +
               "INSERT INTO account(email, pwd, nickname, cell_phone)" +
               "VALUES (@email, @pwd, @nickname, @cell_phone);";

            using (var db = GetSampleTalkDb())
            {
                return db.Execute(query, new SqlParameter[]
                {
                    new SqlParameter("@email", account.Email),
                    new SqlParameter("@pwd", account.Pwd),
                    new SqlParameter("@nickname", account.NickName),
                    new SqlParameter("@cell_phone", account.CellPhone),
                });
            }
        }

        public void Update(Account account)
        {
            string query = "" +
               "UPDATE account SET \n" +
               "email = @email, " +
               "pwd = @pwd, " +
               "nickname = @nickname, " +
               "cell_phone=@cell_phone " +
               "WHERE id = @id;";

            using (var db = GetSampleTalkDb())
            {
                db.Execute(query, new SqlParameter[]
                {
                    new SqlParameter("@email", account.Email),
                    new SqlParameter("@pwd", account.Pwd),
                    new SqlParameter("@nickname", account.NickName),
                    new SqlParameter("@cell_phone", account.CellPhone),
                    new SqlParameter("@id", account.Id),
                });
            }
        }

        public void Delete(int id)
        {
            string query = "" +
               "DELETE FROM account WHERE id = @id;";

            using (var db = GetSampleTalkDb())
            {
                db.Execute(query, new SqlParameter[]
                {
                    new SqlParameter("@id", id),
                });
            }
        }

        public List<Account> GetAll()
        {
            List<Account> list = new List<Account>();

            string query = "SELECT * FROM account";
            using MySqlDb db = GetSampleTalkDb();
            using IDataReader dr = db.GetReader(query);
            while (dr.Read())
            {
                Account account = new Account()
                {
                    Id = (int)dr["id"],
                    Email = (string)dr["email"],
                    Pwd = (string)dr["pwd"],
                    NickName = (string)dr["nickname"],
                    CellPhone = (string)dr["cell_phone"]
                };
                list.Add(account);
            }
            return list;
        }
    }
}
