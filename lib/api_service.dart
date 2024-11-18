import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchUsers() async {
  const String url = 'https://reqres.in/api/users/';
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    return data['data']; // Data pengguna
  } else {
    throw Exception('Failed to load users');
  }
}