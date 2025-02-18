import 'dart:convert';

import 'package:quotary_app/models/quote_model.dart';
import 'package:http/http.dart' as http;

class QuotesServices {
  static const BASE_URL = 'http://api.quotable.io';
  static const RANDOM_QUOTE = '/random';

  Future<Quote> fetchRandomQuote() async {
    final response = await http.get(Uri.parse('$BASE_URL$RANDOM_QUOTE'));
    if (response.statusCode == 200) {
      return Quote.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load quote');
    }
  }
}
