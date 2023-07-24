namespace WebApplication1.Modles.Interfse
{
    public interface IRoom
    {
        Task<Room> Create(Room room);
        Task<List<Room>> GetRooms();
        Task<Room> GetRoomId(int id);
        Task<Room> Update(int id, Room room);
        Task<Room> Delete(int id);
    }
}
