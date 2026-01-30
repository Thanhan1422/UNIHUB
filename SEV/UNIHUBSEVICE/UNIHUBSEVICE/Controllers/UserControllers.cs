using Microsoft.AspNetCore.Mvc;
using MongoDB.Driver;
using UNIHUBSEVICE.Data;
using UNIHUBSEVICE.Model;

namespace UNIHUBSEVICE.Controllers
{
    [ApiController]
    [Route("api/users")]
    public class UsersController : ControllerBase
    {
        private readonly MongoContext _context;

        public UsersController(MongoContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetAll()
        {
            var users = await _context.Users.Find(_ => true).ToListAsync();
            return Ok(users);
        }

        [HttpPost]
        public async Task<IActionResult> Create(User user)
        {
            await _context.Users.InsertOneAsync(user);
            return Ok(user);
        }
    }
}
