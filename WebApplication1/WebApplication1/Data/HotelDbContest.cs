using Microsoft.EntityFrameworkCore;
using Microsoft.Identity.Client;
using WebApplication1.Modles;

namespace WebApplication1.Data
{
    public class HotelDbContest : DbContext
    {
        public HotelDbContest(DbContextOptions options) : base(options)
        {



        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

            modelBuilder.Entity<Hotel>().HasData(
                new Hotel()
                {
                    ID = 1,
                    Name = "Five",
                    StreetAddress = "Moon",
                    City = "Amman",
                    State = "do",
                    Country = "oo",
                    Phone = "000000000",

                },
                new Hotel()
                {
                    ID = 2,
                    Name = "Five",
                    StreetAddress = "Moon",
                    City = "Amman",
                    State = "do",
                    Country = "oo",
                    Phone = "000000000",

                }, new Hotel()
                {
                    ID = 3,
                    Name = "Five",
                    StreetAddress = "Moon",
                    City = "Amman",
                    State = "do",
                    Country = "oo",
                    Phone = "000000000",

                }


                );

            modelBuilder.Entity<Room>().HasData(

                new Room() { ID = 3, Name = "p", Layout = 9 },
                 new Room() { ID = 4, Name = "p", Layout = 9 },
                new Room() { ID = 5, Name = "p", Layout = 9 }

                );
            modelBuilder.Entity<Amenities>().HasData(
                new Amenities() { Id = 1, Name = "do" },
                new Amenities() { Id = 2, Name = "do" },
                new Amenities() { Id = 3, Name = "do" }
                );

            modelBuilder.Entity<RoomAmenities>().HasKey(
             roomamanites => new { roomamanites.AmenityId, roomamanites.RoomID }
    );
            modelBuilder.Entity<HotelRoom>().HasKey(
               roomamanites => new { roomamanites.HotelID, roomamanites.RoomNumber }
               );



        }


        public DbSet<Hotel> Hotels { get; set; }

        public DbSet<Room> Room { get; set; }

        public DbSet<HotelRoom> HotelRoom { get; set; }

        public DbSet<Amenities> Amenities { get; set; }

        public DbSet<RoomAmenities> RoomAmenities { get; set; }
    }
}

