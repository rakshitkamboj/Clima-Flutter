import 'package:http/http.dart';
import 'dart:convert';

void getData() async {
  Response response = await get(
      'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22');
  if (response.statusCode == 200) {
    String data = response.body;
    print(data);
    var decodedData = jsonDecode(data);
    var temperature = decodedData['main']['temp'];
    var condition = decodedData['weather'][0]['id'];
    var cityName = decodedData['name'];
    print(temperature);
    print(condition);
    print(cityName);
  } else {
    print(response.statusCode);
  }
}
