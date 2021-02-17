import 'dart:convert';

import 'package:http/http.dart' as http;

class APIHelper {

  final String _baseURL = "https://api.webvoke.prakruti/";
  Future<void> getMethod(String endpoint) async {
    String url = _baseURL + endpoint;

    var response = await http.get(url);
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }


  }

  Future<void> postMethod(String endpoint, Map body ) async {

    String url = _baseURL + endpoint;

    var response = await http.post(url , body: body);
    
  }

}