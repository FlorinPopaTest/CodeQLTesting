using Microsoft.AspNetCore.Mvc;

namespace CodeQLTesting.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {
        private static readonly string[] Summaries = new[]
        {
            "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
        };

        private readonly ILogger<WeatherForecastController> _logger;

        public WeatherForecastController(ILogger<WeatherForecastController> logger)
        {
            _logger = logger;
        }

        [HttpGet(Name = "GetWeatherForecast")]
        public IEnumerable<WeatherForecast> Get()
        {
        //TODO

            return Enumerable.Range(1, 5).Select(index => new WeatherForecast
            {
                Date = DateTime.Now.AddDays(index),
                TemperatureC = Random.Shared.Next(-20, 55),
                Summary = Summaries[Random.Shared.Next(Summaries.Length)]
            })
            .ToArray();
        }

        [HttpPost("login")]
        public IActionResult Login([FromBody] string username, [FromBody] string password)
        {


            BadClass badClass = new BadClass();
            ConnectionType connectionType = ConnectionType.Connected;
            if (connectionType != ConnectionType.Connected)
            {
                if (connectionType != ConnectionType.Disconected)
                {
                    int j = 1;
                }

            }
            if (true)
            {

            }
            else
            {
                int i = 0;
            }
            return Ok();
        }
    }
}
