import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/weathe.dart';

//https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=f8fbfc94042470e2c8b75a899e4f3c98

class HomeController {

  Future<List<Weather>> tempoFetch() async {
  final response = await http.get(
    Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=f8fbfc94042470e2c8b75a899e4f3c98'),
  );

  List<Weather> characters = [];

  final bool validateStatusCode = response.statusCode == 200;
    if (validateStatusCode) {
      final dataFromAPI = jsonDecode(response.body);
      final List<dynamic> charactersResults = dataFromAPI['tempo'];

      characters =
          charactersResults.map((json) => Weather.fromJson(json)).toList();
    }
    return characters;
  }
  // List<Weather> tempos = [];
  // var rb = response.body;
  // var list = json.decode(rb) as List;

  // List<Weather> imgs = list.map((i) => Weather.fromJson(i)).toList();

  // return imgs;
}

final homeController = HomeController();


