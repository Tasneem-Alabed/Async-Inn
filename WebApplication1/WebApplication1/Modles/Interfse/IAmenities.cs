namespace WebApplication1.Modles.Interfse
{
    public interface IAmenities
    {
        Task<Amenities> Create(Amenities amenity);

        Task<List<Amenities>> GetAmenities();

        Task<Amenities> GetAmenityById(int id);

        Task<Amenities> UpdateAmenity(int id, Amenities amenity);

        Task DeleteAmenity(int id);
    }
}
