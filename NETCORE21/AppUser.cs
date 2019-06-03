using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace NETCORE21
{

    public class AppUser : IdentityUser
    {
        public string Name { get; set; }
        public string NickName { get; set; }
        public string FamilyName { get; set; }
        public long? FacebookId { get; set; }
        public long? GoogleId { get; set; }
        public string PictureUrl { get; set; }
        public string Roles { get; set; }
    }

}
