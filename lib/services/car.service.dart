import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/car.dart';

class CarService {
  // TODO
  // Future<List<Car>> fetchLog() async {
  //   Map<String, String> requestHeaders = {
  //     'Content-type': 'application/json',
  //     'Accept': 'application/json',
  //     'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MSwibmFtZSI6InRlc3RAZXhhbXBsZS5jb20iLCJlbWFpbCI6InRlc3RAZXhhbXBsZS5jb20iLCJleHAiOjE2NTA1MTEzNjh9.dsAhTapY9KwVMKES73xLRSWo41-dPHgHkqZURYMc8_E'
  //   };
  //   final apiUrl = Uri.parse('https://deep-log-api.xyz/api/log/');
  //   final response = await http.get(apiUrl, headers: requestHeaders);
  //   final List<Car> logs = (json.decode(response.body) as List).map((data) => Log.fromJson(data)).toList();
  //   return logs;
  // }
}