import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "http://localhost:3001/api";

  static Future<List> getMonitors() async {
    final response = await http.get(Uri.parse("$baseUrl/monitors"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['monitors'];
    } else {
      throw Exception("Failed to load monitors");
    }
  }

  static Future<Map> getMonitorDetails(String id) async {
    final response = await http.get(Uri.parse("$baseUrl/monitors/$id"));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return data['monitor'];
    } else {
      throw Exception("Failed to load monitor details");
    }
  }
}
