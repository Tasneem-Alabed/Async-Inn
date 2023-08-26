namespace WebApplication1.Modles
{
    public class RoomAmenities
    {
        public int RoomID { get; set; }

        public int AmenityId { get; set; }


        public Room? Room { get; set; }

        public Amenities? Amenity { get; set; }
    }
}
