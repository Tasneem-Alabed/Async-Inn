using Microsoft.EntityFrameworkCore;
using WebApplication1.Data;
using WebApplication1.Migrations;
using WebApplication1.Modles.Interfse;
namespace WebApplication1.Modles.Servicse

{
    public class RoomServicse : IRoom
    {
        private readonly HotelDbContest _context;

        public RoomServicse(HotelDbContest context)
        {
            _context = context;
        }
        public async Task<Room> Create(Room room)
        {
            _context.Room.Add(room);

            await _context.SaveChangesAsync();

            return room;
        }

       
        public async Task<Room> GetRoomId(int id)
        {
            Room? room = await _context.Room
                .Include(amenities => amenities.RoomAmenities)
                .ThenInclude(amenity => amenity.Amenity)
                .Include(hotelRooms => hotelRooms.HotelRooms)
                .ThenInclude(hotel => hotel.Hotel)
                .FirstOrDefaultAsync(rId => rId.ID == id);

            return room;
        }

        public async Task<List<Room>> GetRooms()
        {
            var rooms = await _context.Room
                .Include(r => r.RoomAmenities)
                    .ThenInclude(ra => ra.Amenity)
                .Include(hotelRooms => hotelRooms.HotelRooms)
                .ThenInclude(hotel => hotel.Hotel)
                .ToListAsync();


            var result = rooms.Select(r => new Room
            {
                ID = r.ID,
                Name = r.Name,
                Layout = r.Layout,
                RoomAmenities = r.RoomAmenities.Select(ra => new RoomAmenities
                {
                    RoomID = ra.RoomID,
                    AmenityId = ra.AmenityId,
                    Amenity = new Amenities
                    {
                        Id = ra.Amenity.Id,
                        Name = ra.Amenity.Name,
                    },
                    Room = null

                }).ToList(),
                HotelRooms = r.HotelRooms.Select(ra => new HotelRoom
                {
                    HotelID = ra.HotelID,
                    RoomID = ra.RoomID,
                    RoomNumber = ra.RoomNumber,
                    Rate = ra.Rate,
                    IsPetFriendly = ra.IsPetFriendly,
                    Hotel = new Hotel
                    {
                        ID = ra.Hotel.ID,
                        Name = ra.Hotel.Name,
                        StreetAddress = ra.Hotel.StreetAddress,
                        City = ra.Hotel.City,
                        State = ra.Hotel.State,
                        Country = ra.Hotel.Country,
                        Phone = ra.Hotel.Phone
                    }

                }).ToList()

            }).ToList();

            return result;
        }



        public async Task<Room> Update(int id, Room room)
        {
            var roomValue = await _context.Room.FindAsync(id);

            if (roomValue != null)
            {
                roomValue.Name = room.Name;
                roomValue.Layout = room.Layout;

                await _context.SaveChangesAsync();
            }

            return roomValue;
        }

        public async Task<RoomAmenities> AddAmenityToRoom(int RoomID, int AmenityId)
        {
            var addAmenityToRoom = new RoomAmenities { RoomID = RoomID, AmenityId = AmenityId };
            _context.RoomAmenities.Add(addAmenityToRoom);
            await _context.SaveChangesAsync();
            return addAmenityToRoom;
        }

       

       public async Task<Room> Delete(int id)
        {
            Room room = await GetRoomId(id);

            _context.Entry<Room>(room).State = EntityState.Deleted;

            await _context.SaveChangesAsync();

            return room;

        }

        public async Task<RoomAmenities> RemoveAmentityFromRoom(int roomId, int amenityId)
        {
            var removedRoomsAmenity = await _context.RoomAmenities.FirstOrDefaultAsync(roomAmenities => roomAmenities.RoomID == roomId && roomAmenities.AmenityId == amenityId);

            _context.Entry<RoomAmenities>(removedRoomsAmenity).State = EntityState.Deleted;

            await _context.SaveChangesAsync();

            return removedRoomsAmenity;
        }
    }
}
