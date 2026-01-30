// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class ApiService {
//   static const String baseUrl = "http://localhost:5227/api";


//   static Future<void> createUser(String name, String email, String role) async {
//     final url = Uri.parse("$baseUrl/users");

//     final response = await http.post(
//       url,
//       headers: {"Content-Type": "application/json"},
//       body: jsonEncode({
//         "name": name,
//         "email": email,
//         "userRole": role,
//       }),
//     );

//     if (response.statusCode != 200) {
//       throw Exception("Create failed: ${response.body}");
//     }
//   }
// }
