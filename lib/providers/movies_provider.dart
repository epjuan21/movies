import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = '3175c7cf02815ac53bf55be1ffff54ea';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'en-ES';

  MoviesProvider() {
    print('Movies Provider Inicializado');
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});

      print(url);

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    print(response.body);
  }
}
