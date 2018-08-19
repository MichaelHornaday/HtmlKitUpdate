using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//Ther UserInfo object is used to define the contents of the token.
namespace APIStarterKit.Models
{
    public class UserInfo
    {
        public string UserName { get; set; }
        public string TenantUniqueName { get; set; }
    }
}