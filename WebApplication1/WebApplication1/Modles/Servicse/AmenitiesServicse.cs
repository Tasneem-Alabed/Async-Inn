using Microsoft.EntityFrameworkCore;
using WebApplication1.Data;
using WebApplication1.Modles.Interfse;
using WebApplication1.Modles.Interfse;
namespace WebApplication1.Modles.Servicse
{
    public class AmenitiesServicse : IAmenities
    {
        private readonly HotelDbContest _amenity;

        public AmenitiesServicse(HotelDbContest amenity)
        {
            _amenity = amenity;
        }

        public async Task<Amenities> Create(Amenities amenity)
        {
            _amenity.Amenities.Add(amenity);

            await _amenity.SaveChangesAsync();

            return amenity;

        }

        public async Task DeleteAmenity(int id)
        {
            Amenities amenity = await GetAmenityById(id);

            _amenity.Entry<Amenities>(amenity).State = EntityState.Deleted;

            await _amenity.SaveChangesAsync();
        }

        public async Task<List<Amenities>> GetAmenities()
        {

            var amenities = await _amenity.Amenities
                .Include(a => a.Rooms)
                    .ThenInclude(ra => ra.Room)
                .ToListAsync();

            var result = amenities.Select(a => new Amenities
            {
                Id = a.Id,
                Name = a.Name,

                Rooms = a.Rooms.Select(ra => new RoomAmenities
                {
                    RoomID = ra.RoomID,
                    AmenityId = ra.AmenityId,
                    Room = new Room
                    {
                        ID = ra.Room.ID,
                        Name = ra.Room.Name,
                        Layout = ra.Room.Layout

                    }
                }).ToList()
            }).ToList();

            return result;



        }

        public async Task<Amenities> GetAmenityById(int id)
        {
            Amenities? amenity = await _amenity.Amenities.FindAsync(id);
            return amenity;
        }

        public async Task<Amenities> UpdateAmenity(int id, Amenities amenity)
        {
            var amenityValue = await _amenity.Amenities.FindAsync(id);

            if (amenityValue != null)
            {
                amenityValue.Name = amenity.Name;

                await _amenity.SaveChangesAsync();
            }

            return amenityValue;
        }
    }
}

