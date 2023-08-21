import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  Future<List<Map<String, dynamic>>> fetchUsers() async {
    final response = await http.get(Uri.parse("https://reqres.in/api/users?page=2&per_page=10"));

    if (response.statusCode == 200) {
      final mapResponse = json.decode(response.body);
      return List<Map<String, dynamic>>.from(mapResponse['data']);
    } else {
      throw Exception('Failed to load users');
    }
  }
}
