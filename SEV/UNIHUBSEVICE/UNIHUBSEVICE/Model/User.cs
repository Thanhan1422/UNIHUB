using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace UNIHUBSEVICE.Model
{
    public class User
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string? Id { get; set; }

        public string Name { get; set; }
        public string Email { get; set; }
        public string UserRole { get; set; }
    }
}
