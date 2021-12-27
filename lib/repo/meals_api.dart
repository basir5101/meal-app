import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meal/model/meal_model.dart';

class ApiClient {
  String server = 'http://localhost:1337/meals';
  Future<MealModel> saveMealMonth(String title) async {
    final response = await http.post(
      Uri.parse(server),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
      }),
    );
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return MealModel.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }

  Future<http.Response> updateName(List<Names> names) {
    return http.put(
      Uri.parse('$server/1'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, List<Names>>{
        'names': names,
      }),
    );
  }
}