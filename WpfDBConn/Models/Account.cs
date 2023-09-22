using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfDBConn.Models
{
    public class Account
    {
        public int Id { get; set; } = default!;
        public string Email { get; set; } = default!;
        public string Pwd { get; set; } = default!;
        public string NickName { get; set; } = default!;
        public string CellPhone { get; set; } = default!;
    }
}
