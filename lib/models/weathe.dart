// // ignore_for_file: public_member_api_docs, sort_constructors_first


import 'dart:convert';

Weather imgFromJson(String str) => Weather.fromJson(json.decode(str));
String imgToJson(Weather data) => json.encode(data.toJson());

class Weather {
  String description;
  String country;
  double temp;
  double wind;
  int humidity;
  double feels_like;
  int pressure;

    Weather({
    required this.description,
    required this.country,
    required this.temp,
    required this.wind,
    required this.humidity,
    required this.feels_like,
    required this.pressure,
    });

    factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        description: json['weather']['description'],
        country: json['sys']['country'],
        temp: json['main']['temp'],
        wind: json['wind']['speed'],
        humidity: json['main']['humidity'],
        feels_like: json['main']['feels_like'],
        pressure: json['main']['pressure']
    );

    Map<String, dynamic> toJson() => {
        description: description,
        country: country,
    };
}