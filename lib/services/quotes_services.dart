import 'dart:convert';

import 'package:quotary_app/models/quote_model.dart';
import 'package:http/http.dart' as http;

class QuotesServices {
  static const BASE_URL = 'http://api.quotable.io/quotes/random?';

  Future<Quote> fetchRandomQuote() async {
    final response = await http.get(Uri.parse(BASE_URL));

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load quote');
    }
  }

  // Fetch business quotes
  Future<Quote> fetchBusinessQuotes() async {
    final response = await http.get(Uri.parse('$BASE_URL&tags=business'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load business quotes');
    }
  }

  // Fetch creativity quotes
  Future<Quote> fetchCreativityQuotes() async {
    final response = await http.get(Uri.parse('$BASE_URL&tags=creativity'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load creativity quotes');
    }
  }

  // Fetch education, mathematics and science quotes
  Future<Quote> fetchEducationQuotes() async {
    final response = await http.get(
      Uri.parse('$BASE_URL&tags=education, mathematics, science'),
    );
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load education quotes');
    }
  }

  // Fetch ethics quotes
  Future<Quote> fetchEthicsQuotes() async {
    final response = await http.get(Uri.parse('$BASE_URL&tags=ethics'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load ethics quotes');
    }
  }

  //  Fetch Family quotes
  Future<Quote> fetchFamilyQuotes() async {
    final response = await http.get(Uri.parse('$BASE_URL&tags=family'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load family quotes');
    }
  }

  // Fetch famous quotes
  Future<Quote> fetchFamousQuotes() async {
    final response = await http.get(Uri.parse('$BASE_URL&tags=famous-quotes'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load famous quotes');
    }
  }

  // Fetch film quotes
  Future<Quote> fetchFilmQuotes() async {
    final response = await http.get(Uri.parse('$BASE_URL&tags=film'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load film quotes');
    }
  }

  // Fetch friendship quotes
  Future<Quote> fetchFriendshipQuotes() async {
    final response = await http.get(Uri.parse('$BASE_URL&tags=friendship'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load friendship quotes');
    }
  }

  // Fetch happiness quotes
  Future<Quote> fetchHappinessQuotes() async {
    final response = await http.get(Uri.parse('$BASE_URL&tags=happiness'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load happiness quotes');
    }
  }

  // Fetch history quotes
  Future<Quote> fetchHistoryQuotes() async {
    final response = await http.get(Uri.parse('$BASE_URL&tags=history'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load history quotes');
    }
  }

  // Fetch humor and humorous quotes
  Future<Quote> fetchHumorQuotes() async {
    final response = await http.get(Uri.parse('$BASE_URL&tags=humor,humorous'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load humor quotes');
    }
  }

  // Fetch imagination, inspirational and motivational quotes
  Future<Quote> fetchInspirationalQuotes() async {
    final response = await http.get(
      Uri.parse('$BASE_URL&tags=imagination,inspirational,motivational'),
    );
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load inspirational quotes');
    }
  }

  // Fetch love quotes
  Future<Quote> fetchLoveQuotes() async {
    final response = await http.get(Uri.parse('$BASE_URL&tags=love'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse.isNotEmpty) {
        return Quote.fromJson(jsonResponse[0]);
      } else {
        throw Exception('No quotes found');
      }
    } else {
      throw Exception('Failed to load love quotes');
    }
  }
}
