using Microsoft.Extensions.Options;
using MongoDB.Driver;
using UNIHUBSEVICE.Model;


namespace UNIHUBSEVICE.Data
{
    public class MongoContext
    {
        private readonly IMongoDatabase _database;

        public MongoContext(IConfiguration config)
        {
            var client = new MongoClient(config["MongoDB:ConnectionString"]);
            _database = client.GetDatabase(config["MongoDB:DatabaseName"]);
        }

        public IMongoCollection<User> Users =>
            _database.GetCollection<User>("Users");
    }
}

