using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NETCORE21
{
    public static class Constants
    {
        // NOTE: this must be placed in a secrets storage
        private const string _secretKey = "NetCore21SuperSuperSuperSecretKeyGoesHere";

        public static string SecretKey { get => _secretKey; }

        public static class JwtClaimIdentifiers
        {
            public const string Rol = "rol", Id = "id", Name = "name", Roles = "Roles";
        }

        public static class JwtClaims
        {
            public const string ApiAccess = "api_access";
            public const string Admin = "Admin";
        }
    }
}
