namespace WebApplication1.Modles.Interfse
{
    public interface IHotelPoom
    {
        Task<HotelRoom> Create(HotelRoom hotelRoom, int hotelId);

        Task<List<HotelRoom>> GetHotelRooms(int hotelId);

        Task<HotelRoom> GetHotelRoomsDetails(int hotelId, int roomNumber);

        Task<HotelRoom> UpdateHotelRooms(int hotelId, int roomNumber, HotelRoom hotelRoom);

        Task DeleteHotelRooms(int hotelId, int roomNumber);

        Task<List<HotelRoom>> GetHotelRoomsByName(string name);
    }
}
