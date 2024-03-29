﻿using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace NETCORE21.Controllers
{
    [Authorize(Policy = "ApiUser")]    
    [Authorize(Policy = "Role")]
    [Route("api/[controller]")]
    public class ProfileController : Controller
    {
        private readonly UserManager<AppUser> _userManager;
        private readonly ClaimsPrincipal _caller;
        private readonly NetCore21DbContext _appDbContext;

        public ProfileController(UserManager<AppUser> userManager, NetCore21DbContext appDbContext, IHttpContextAccessor httpContextAccessor)
        {
            _caller = httpContextAccessor.HttpContext.User;
            _appDbContext = appDbContext;
            _userManager = userManager;
        }

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            var userId = _caller.Claims.Single(c => c.Type == "id");
            var customer = await _appDbContext.Customers.Include(c => c.Identity).SingleAsync(c => c.Identity.Id == userId.Value);

            return new OkObjectResult(new
            {
                Message = "This is secure API and user data!",
                customer.Identity.Name,
                customer.Identity.NickName,
                customer.Identity.PictureUrl,
                customer.Identity.FacebookId,
                customer.Location,
                customer.Locale,
                customer.Gender
            });
        }

        [HttpGet("user")]
        public async Task<IActionResult> GetUser()
        {
            var userId = _caller.Claims.Single(c => c.Type == "id");
            var customer = await _appDbContext.Customers.Include(c => c.Identity).SingleAsync(c => c.Identity.Id == userId.Value);
            var rol = await _userManager.GetRolesAsync(customer.Identity);

            string roles;

            if (rol.Count == 0)
            {
                roles = "";
            }
            else
            {
                roles = rol[0];
            }

            return new OkObjectResult(new
            {
                customer.Identity.Id,
                roles,
                customer.Identity.Name,
                auth_token = "",
                expires_in = -1
            });
        }
    }

}
