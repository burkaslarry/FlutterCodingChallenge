// utils/constants.dart

//path of local image
const String weatherPath ="https://api.openweathermap.org/data/2.5/weather?lat=\$latitude&lon=\$longitude&appid=\$apiKey";

const String apiKey = "";
const int period = 3;

double kelvinToCelsius(double temperatureInKelvin) {
  double celsius = temperatureInKelvin - 273.15;
  return double.parse(celsius.toStringAsFixed(1));
}