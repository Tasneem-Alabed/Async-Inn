using Microsoft.EntityFrameworkCore;
using WebApplication1.Data;

namespace WebApplication1
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);
            builder.Services.AddControllers();
            string connString = builder.Configuration.GetConnectionString("DefaultConnection");

            builder.Services.AddDbContext<HotelDbContest>(options => options.UseSqlServer(connString));
            var app = builder.Build();
            app.MapControllers();
            app.MapGet("/", () => "Hello !");

            app.Run();
        }
    }
}