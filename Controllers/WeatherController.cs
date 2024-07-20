using Hangfire;
using Microsoft.AspNetCore.Mvc;

public class WeatherController : ControllerBase
{
    private readonly WeatherNotificationService _notificationService;

    public WeatherController(WeatherNotificationService notificationService)
    {
        _notificationService = notificationService;
    }

    [HttpPost("simulate")]
    public IActionResult SimulateWeatherChange([FromBody] WeatherChange model)
    {
        BackgroundJob.Enqueue(() => _notificationService.SendNotificationAsync());

        return Ok();
    }
}
