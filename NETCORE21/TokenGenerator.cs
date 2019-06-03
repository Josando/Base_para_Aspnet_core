using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Security.Claims;
using Newtonsoft.Json;

namespace NETCORE21
{
    public class TokenGenerator
    {
        public static async Task<string> GenerateJwt(
          ClaimsIdentity identity,
          IJwtFactory jwtFactory,
          string userName,          
          JwtOptions jwtOptions,
          JsonSerializerSettings serializerSettings)
        {
            var response = new
            {
                id = identity.Claims.Single(c => c.Type == "id").Value,
                name = identity.Claims.Single(c => c.Type == "name").Value,
                roles = identity.Claims.Single(c => c.Type == "Roles").Value,
                auth_token = await jwtFactory.GenerateEncodedToken(userName, identity),
                expires_in = (int)jwtOptions.ValidFor.TotalSeconds
            };

            return JsonConvert.SerializeObject(response, serializerSettings);
        }
    }
}
