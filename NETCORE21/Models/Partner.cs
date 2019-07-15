using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NETCORE21
{
    public class Partner
    {
        public int Id { get; set; }
        public string IdentityId { get; set; }
        public string CompanyName { get; set; }
        public string Locale { get; set; }

        public AppUser OwnerIdentity { get; set; }
    }
}
