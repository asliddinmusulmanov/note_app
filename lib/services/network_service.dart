// ignore_for_file: file_names
import 'dart:convert';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart';

class NetworkService {
  static const baseUrl = '65c4be6adae2304e92e33e36.mockapi.io';
  static const String date = '/user/shopping';
  static const String delet = '/shopping/';


  static Future<String?> getDate(String api) async {
    final url = Uri.https(baseUrl, api);
    Response response = await get(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  static Future<String?> postDate(String api, Map<String, dynamic> body) async {
    final url = Uri.https(baseUrl, api);
    Response response = await post(url,
        body: jsonEncode(body), headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  static Future<String?> postDateCopy(
      String baseUrl, String api, Map<String, dynamic> body) async {
    final url = Uri.https(baseUrl, api);
    Response response = await post(url,
        body: jsonEncode(body), headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  static Future<String?> delateDate(String date, String id) async {
    final url = Uri.https(baseUrl, "$date/$id");
    Response response = await delete(url);
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  static Future<String?> updateDate(
      String api, String id, Map<String, dynamic> body) async {
    final url = Uri.https(baseUrl, '$api/$id');
    Response response = await put(url,
        headers: {'Content-Type': 'application/json'}, body: jsonEncode(body));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }
}
