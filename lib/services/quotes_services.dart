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

  // Fetch Achievement & Motivation quotes
  Future<Quote> fetchAchievementAndMotivationQuotes() async {
    final response = await http.get(
      Uri.parse(
        '$BASE_URL&tags=business|competition|inspirational|leadership|motivational|opportunity|power-quotes|success|work',
      ),
    );
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

  // Fetch Arts & Expression quotes
  Future<Quote> fetchArtsAndExpressionQuotes() async {
    final response = await http.get(
      Uri.parse('$BASE_URL&tags=film|famous-quotes|humor|humorous'),
    );
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

  // Fetch Knowledge & Creativity quotes
  Future<Quote> fetchKnowledgeAndCreativityQuotes() async {
    final response = await http.get(
      Uri.parse(
        '$BASE_URL&tags=creativity|education|genius|imagination|knowledge|literature|mathematics|science|wisdom',
      ),
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

  // Fetch Life & Growth quotes
  Future<Quote> fetchLifeAndGrowthQuotes() async {
    final response = await http.get(
      Uri.parse(
        '$BASE_URL&tags=age|change|character|courage|failure|future|happiness|life|pain|perseverance|self|self-help|time|weakness|wellness',
      ),
    );
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

  //  Fetch Philosophy & Concepts quotes
  Future<Quote> fetchPhilosophyAndConceptsQuotes() async {
    final response = await http.get(
      Uri.parse('$BASE_URL&tags=philosophy|proverb|truth|time|change|future'),
    );
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

  // Fetch Society & Interactions quotes
  Future<Quote> fetchSocietyAndInteractionQuotes() async {
    final response = await http.get(
      Uri.parse(
        '$BASE_URL&tags=family|friendship|humor|humorous|love|philosophy|politics|social-justice|society',
      ),
    );
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

  // Fetch Sports & Competition quotes
  Future<Quote> fetchSportsAndCompetitionQuotes() async {
    final response = await http.get(
      Uri.parse('$BASE_URL&tags=athletics|sports|competition'),
    );
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

  // Fetch Technology quotes
  Future<Quote> fetchTechnologyQuotes() async {
    final response = await http.get(Uri.parse('$BASE_URL&tags=technology'));
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

  // Fetch Values & Spirituality quotes
  Future<Quote> fetchValuesAndSpiritualityQuotes() async {
    final response = await http.get(
      Uri.parse(
        '$BASE_URL&tags=ethics|faith|generosity|gratitude|honor|religion|spirituality|tolerance|truth|virtue|conservative|freedom',
      ),
    );
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

  // Fetch World & History quotes
  Future<Quote> fetchWorldAndHistoryQuotes() async {
    final response = await http.get(
      Uri.parse('$BASE_URL&tags=health|history|nature|war'),
    );
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
}
