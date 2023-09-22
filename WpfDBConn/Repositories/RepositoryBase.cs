using CommonLib.Database;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfDBConn.Repositories
{
    public abstract class RepositoryBase
    {
        public MySqlDb GetSampleTalkDb()
        {
            return new MySqlDb(Properties.Settings.Default.SAMPLETALK_DB_CONNECTION_STR);
        }
    }
}
