using Microsoft.EntityFrameworkCore;
public class WeatherContext : DbContext
{
    public WeatherContext(DbContextOptions<WeatherContext> options) : base(options) { }

    public DbSet<User> Users { get; set; }
    public DbSet<WeatherChange> WeatherChanges { get; set; }
}