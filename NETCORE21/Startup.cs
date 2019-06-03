using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Microsoft.EntityFrameworkCore;
using AutoMapper;
using Microsoft.AspNetCore.Identity;
using Microsoft.IdentityModel.Tokens;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using System.Text;
using FluentValidation.AspNetCore;
using System.Security.Claims;


namespace NETCORE21
{
    public class Startup
    {

        private readonly SymmetricSecurityKey _signingKey = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(Constants.SecretKey));

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        //readonly string MyAllowSpecificOrigins = "_myAllowSpecificOrigins";

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            // Add framework services.
            services.AddDbContext<NetCore21DbContext>(options =>
                options.UseSqlServer(Configuration.GetConnectionString("DefaultConnection"),
                b => b.MigrationsAssembly("NETCORE21")));

            //services.AddDefaultIdentity<AppUser>()
            //    .AddEntityFrameworkStores<NetCore21DbContext>();


            services.AddSingleton<IJwtFactory, JwtFactory>();

            // services.TryAddTransient<IHttpContextAccessor, HttpContextAccessor>();
                       

            // Configure JWT
            var jwtOptions = Configuration.GetSection(nameof(JwtOptions));
            services.Configure<JwtOptions>(options =>
            {
                options.Issuer = jwtOptions[nameof(JwtOptions.Issuer)];
                options.Audience = jwtOptions[nameof(JwtOptions.Audience)];
                options.SigningCredentials = new SigningCredentials(_signingKey, SecurityAlgorithms.HmacSha256);
            });

            var tokenValidationParameters = new TokenValidationParameters
            {
                ValidateIssuer = true,
                ValidIssuer = jwtOptions[nameof(JwtOptions.Issuer)],

                ValidateAudience = true,
                ValidAudience = jwtOptions[nameof(JwtOptions.Audience)],

                ValidateIssuerSigningKey = true,
                IssuerSigningKey = _signingKey,

                RequireExpirationTime = true,
                ValidateLifetime = true,
                ClockSkew = TimeSpan.Zero                
            };

            services.AddAuthentication(options =>
            {
                options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
                options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            })
            .AddJwtBearer(configureOptions =>
            {
                configureOptions.ClaimsIssuer = jwtOptions[nameof(JwtOptions.Issuer)];
                configureOptions.TokenValidationParameters = tokenValidationParameters;
                configureOptions.SaveToken = true;               
            });
            services.AddAuthorization(options =>
            {
                options.AddPolicy("ApiUser", policy => policy.RequireClaim(Constants.JwtClaimIdentifiers.Rol, Constants.JwtClaims.ApiAccess));
                options.AddPolicy("Role", policy => policy.RequireClaim(Constants.JwtClaimIdentifiers.Roles, Constants.JwtClaims.Admin));
                //options.AddPolicy("ApiUsers", policy => policy.RequireRole("Admin"));//.RequireRole("Admin"));
            });

            // add identity
            var builders = services.AddIdentityCore<AppUser>(o =>
            {
                // configure identity options
                o.Password.RequireDigit = false;
                o.Password.RequireLowercase = false;
                o.Password.RequireUppercase = false;
                o.Password.RequireNonAlphanumeric = false;
                o.Password.RequiredLength = 6;
            });
            builders = new IdentityBuilder(builders.UserType, typeof(IdentityRole), builders.Services);
            //builders.AddRoles<IdentityRole>();
            builders.AddEntityFrameworkStores<NetCore21DbContext>().AddRoles<IdentityRole>().AddDefaultTokenProviders();

    
            // services.AddIdentity<AppUser, IdentityRole>();//.AddEntityFrameworkStores<NetCore21DbContext>().AddDefaultTokenProviders();


            services.AddCors(options =>
            {
                options.AddPolicy("AllowMyOrigin",
                builder =>
                {
                    builder.WithOrigins("http://localhost:4200")//AllowAnyOrigin()
                     .AllowAnyMethod()
                     .AllowAnyHeader();
                     //.AllowCredentials();
                });
            });
            services.AddAutoMapper();//SetCompatibilityVersion(CompatibilityVersion.Version_2_2)
            services.AddMvc().AddFluentValidation(fv => fv.RegisterValidatorsFromAssemblyContaining<Startup>());
        }


        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, IServiceProvider services)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

           
            app.UseAuthentication();
            app.UseDefaultFiles();
            app.UseStaticFiles();

            app.UseCors("AllowMyOrigin");

            app.UseHttpsRedirection();
            app.UseMvc();

            //CreateUserRoles(services).Wait();
        }

        private async Task CreateUserRoles(IServiceProvider serviceProvider)
        {
            var RoleManager = serviceProvider.GetRequiredService<RoleManager<IdentityRole>>();
            var UserManager = serviceProvider.GetRequiredService<UserManager<AppUser>>();


            IdentityResult roleResult;
            //Adding Addmin Role  
            var roleCheck = await RoleManager.RoleExistsAsync("Admin");
            if (!roleCheck)
            {
                //create the roles and seed them to the database  
                roleResult = await RoleManager.CreateAsync(new IdentityRole("Admin"));
            }
            //Assign Admin role to the main User here we have given our newly loregistered login id for Admin management  
            AppUser user = await UserManager.FindByEmailAsync("josando@gmail.com");
            var User = new AppUser();
            await UserManager.AddToRoleAsync(user, "Admin");

            //Added Roles  
            var roleResults = await RoleManager.FindByNameAsync("Admin");
            if (roleResults == null)
            {
                roleResults = new IdentityRole("Admin");
                await RoleManager.CreateAsync(roleResults);
            }

            var roleClaimList = (await RoleManager.GetClaimsAsync(roleResults)).Select(p => p.Type);
            if (!roleClaimList.Contains("ManagerPermissions"))
            {
                await RoleManager.AddClaimAsync(roleResults, new Claim("ManagerPermissions", "true"));
            }


            //var claimList1 = (await UserManager.GetClaimsAsync(user)).Select(p => p.Type);

            //    await UserManager.AddClaimAsync(user, new Claim("IsAdmin", "false"));



        }
    }   

}
