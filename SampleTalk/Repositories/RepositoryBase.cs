using CommonLib.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleTalk.Repositories
{
    public abstract class RepositoryBase
    {
        protected MySqlDb AccountDb => new MySqlDb(Properties.Settings.Default.CONNSTRING_ACCOUNT);
    }
}
