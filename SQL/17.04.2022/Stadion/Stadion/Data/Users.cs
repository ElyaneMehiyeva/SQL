﻿using System;
using System.Collections.Generic;
using System.Text;

namespace Stadion.Data
{
    internal class Users
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }

        public void ShowInfo()
        {
            Console.WriteLine($"Id :{Id}, FullName :{FullName}, Email :{Email}");
        }
    }
}
