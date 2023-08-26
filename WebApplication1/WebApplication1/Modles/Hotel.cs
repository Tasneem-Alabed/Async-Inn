﻿namespace WebApplication1.Modles
{
    public class Hotel
    {
        public int ID { get; set; }

        public string Name { get; set; }

        public string StreetAddress { get; set; }

        public string City { get; set; }

        public string State { get; set; }

        public string Country { get; set; }

        public string Phone { get; set; }

        public List<HotelRoom> HotelRooms { get; set; }
    }
}
