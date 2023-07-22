using Microsoft.Identity.Client;

namespace WebApplication1.Modles
{
    public class HotelRoom
    {
        public int Id { get; set; }
        public int RoomNumber { get; set;}

        public int RoomId { get; set; }

        public decimal Rate { get; set; }

        public bool PitFriendly { get; set; }

        public int Hotel { get; set; }

        public int Room { get; set; }
    }
}
