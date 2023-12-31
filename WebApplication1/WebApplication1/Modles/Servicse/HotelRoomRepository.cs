﻿using Microsoft.EntityFrameworkCore;
using WebApplication1.Data;
using WebApplication1.Modles.Interfse;

namespace WebApplication1.Modles.Servicse
{
    public class HotelRoomRepository : IHotelPoom
    {
        private readonly HotelDbContest _context;

        public HotelRoomRepository(HotelDbContest context)
        {
            _context = context;
        }

        public async Task<HotelRoom> Create(HotelRoom hotelRoom, int hotelId)
        {
            var room = await _context.Room.FindAsync(hotelRoom.RoomID);
            var hotel = await _context.Hotels.FindAsync(hotelRoom.HotelID);

            hotelRoom.HotelID = hotelId;

            hotelRoom.Room = room;
            hotelRoom.Hotel = hotel;

            _context.HotelRoom.Add(hotelRoom);

            await _context.SaveChangesAsync();

            return hotelRoom;
        }

        public async Task DeleteHotelRooms(int hotelId, int roomNumber)
        {
            var delete = await _context.HotelRoom
                .Where(r => r.HotelID == hotelId && r.RoomNumber == roomNumber)
                .FirstOrDefaultAsync();
            if (delete != null)
            {
                _context.Entry<HotelRoom>(delete).State = EntityState.Deleted;

                await _context.SaveChangesAsync();
            }
        }

        public async Task<List<HotelRoom>> GetHotelRooms(int hotelId)
        {
            var hotelRooms = await _context.HotelRoom
                .Include(hotel => hotel.Hotel)
                .Include(room => room.Room)
                .ThenInclude(amenities => amenities.RoomAmenities)
                .ThenInclude(roomAmenities => roomAmenities.Amenity)
                .Where(x => x.HotelID == hotelId)
                .ToListAsync();

            var result = hotelRooms.Select(hr => new HotelRoom
            {
                HotelID = hr.HotelID,
                RoomID = hr.RoomID,
                RoomNumber = hr.RoomNumber,
                Rate = hr.Rate,
                IsPetFriendly = hr.IsPetFriendly,
                Room = new Room
                {
                    ID = hr.Room.ID,
                    Name = hr.Room.Name,
                    Layout = hr.Room.Layout,
                    RoomAmenities = hr.Room.RoomAmenities.Select(ra => new RoomAmenities
                    {
                        RoomID = ra.RoomID,
                        AmenityId = ra.AmenityId,
                        Amenity = new Amenities
                        {
                            Id = ra.Amenity.Id,
                            Name = ra.Amenity.Name,
                        }
                    }).ToList()
                },
                Hotel = new Hotel
                {
                    ID = hr.Hotel.ID,
                    Name = hr.Hotel.Name,
                    StreetAddress = hr.Hotel.StreetAddress,
                    City = hr.Hotel.City,
                    State = hr.Hotel.State,
                    Country = hr.Hotel.Country,
                    Phone = hr.Hotel.Phone
                }

            }).ToList();

            return result;
        }

        public async Task<List<HotelRoom>> GetHotelRoomsByName(string name)
        {
            var hotels = await _context.HotelRoom.Include(x => x.Hotel)
                .Where(hn => hn.Hotel.Name == name)
                .ToListAsync();



            return hotels;

        }

        public async Task<HotelRoom> GetHotelRoomsDetails(int hotelId, int roomNumber)
        {
            var hotelDetails = await _context.HotelRoom
                .Include(hotel => hotel.Hotel)
                .Include(room => room.Room)
                .ThenInclude(roomAmenities => roomAmenities.RoomAmenities)
                .ThenInclude(amenity => amenity.Amenity)
                .Where(hotel => hotel.HotelID == hotelId && hotel.RoomNumber == roomNumber)
                .FirstOrDefaultAsync();


            return hotelDetails;
        }

        public async Task<HotelRoom> UpdateHotelRooms(int hotelId, int roomNumber, HotelRoom hotelRoom)
        {
            // update depend on the id that i will sent 

            var hotel = await _context.HotelRoom.FindAsync(hotelId, roomNumber);

            if (hotel != null)
            {
                hotel.HotelID = hotelRoom.HotelID;
                hotel.RoomID = hotelRoom.RoomID;
                hotel.RoomNumber = hotelRoom.RoomNumber;
                hotel.Rate = hotelRoom.Rate;
                hotel.IsPetFriendly = hotelRoom.IsPetFriendly;

                await _context.SaveChangesAsync();
            }

            return hotelRoom;
        }
    }
}