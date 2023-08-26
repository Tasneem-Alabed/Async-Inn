using Microsoft.EntityFrameworkCore;
using WebApplication1.Data;
using WebApplication1.Migrations;
using WebApplication1.Modles.Interfse;
namespace WebApplication1.Modles.Servicse
{
    public class HotelServices : IHotel
    {
        private readonly HotelDbContest _context;

        public HotelServices(HotelDbContest context)
        {
            _context = context;
        }

        public async Task<Hotel> Create(Hotel hotel)
        {
            _context.Hotels.Add(hotel);

            await _context.SaveChangesAsync();

            return hotel;
        }

        public async Task DeleteHotel(int id)
        {
            Hotel hotel = await GetHotelById(id);

            _context.Entry<Hotel>(hotel).State = EntityState.Deleted;


            await _context.SaveChangesAsync();
        }

        public async Task<Hotel> GetHotelById(int id)
        {
            Hotel hotel = await _context.Hotels.FindAsync(id);

            return hotel;
        }

        public async Task<List<Hotel>> GetHotels()
        {
            var hotels = await _context.Hotels.ToListAsync();

            return hotels;
        }

        public async Task<Hotel> UpdateHotel(int id, Hotel hotel)
        {
            hotel.ID = id;
            _context.Entry<Hotel>(hotel).State = EntityState.Modified;

            await _context.SaveChangesAsync();

            return hotel;
        }
    }
}