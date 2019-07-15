using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace NETCORE21
{
    public class NetCore21DbContext : IdentityDbContext<AppUser>
    {
        public NetCore21DbContext(DbContextOptions options) : base(options) { }

        public DbSet<Customer> Customers { get; set; }
        public DbSet<Partner> Partners { get; set; }
    }
}
