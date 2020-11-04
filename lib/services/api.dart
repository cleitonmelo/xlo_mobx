import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  static final _instance = Api._internal();
  static const MAX = 10;
  static const KEY = '';
  static const BASE_URL = '';

  static Api get instance {
    return _instance;
  }

  Api._internal();

  String getSuggestUrl(String term) {
    return "$BASE_URL?[QUERY_STRING]";
  }

  Future<dynamic> getData(String url) async {
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    }

    throw Exception('Failed to load videos');
  }
}
