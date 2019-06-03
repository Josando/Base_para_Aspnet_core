using System.Security.Claims;
using System.Threading.Tasks;

namespace NETCORE21
{

    public interface IJwtFactory
    {
        Task<string> GenerateEncodedToken(string userName, ClaimsIdentity identity);
        ClaimsIdentity GenerateClaimsIdentity(string userName, string id, string name, string roles);
    }

}
