import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  Future<double> fetchTemperature(String city) async {
    final key = '14560b284589a2019c898a497a9bff1d'; // Replace with your actual API key
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$key&units=metric');

    final res = await http.get(url);

    // Print HTTP status code and body for debugging
    print('Status code: ${res.statusCode}');
    print('Response body: ${res.body}');

    if (res.statusCode == 200) {
      final data = json.decode(res.body);
      return data['main']['temp'];
    } else {
      throw Exception('Failed to fetch weather data');
    }
  }
}

