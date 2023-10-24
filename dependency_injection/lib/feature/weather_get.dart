import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dependency_injection/util/constant.dart';

class WeatherRepository {

  Future<double> fetchTemperature(double latitude, double longitude) async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

    final response = await http.get(url);
    // Print the response status code
    print('Response status code: ${response.statusCode}');

    // Print the response body
    print('Response body: ${response.body}');

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final temperature = data['main']['temp'];
      return temperature.toDouble();
    } else {
      throw Exception('Failed to fetch temperature');
    }
  }
}