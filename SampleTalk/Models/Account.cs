﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleTalk.Models
{
    public class Account
    {
        public string Id { get; set; } = default!;
        public string Email { get; set; } = default!;
        public string Pwd { get; set; } = default!;
        public string Nickname { get; set; } = default!;
        public string CellPhone { get; set; } = default!;
    }
}
