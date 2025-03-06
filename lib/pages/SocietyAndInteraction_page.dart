import 'package:flutter/material.dart';
import 'package:quotary_app/models/quote_model.dart';
import 'package:quotary_app/services/quotes_services.dart';

class SocietyandinteractionPage extends StatefulWidget {
  const SocietyandinteractionPage({super.key});

  @override
  State<SocietyandinteractionPage> createState() =>
      _SocietyandinteractionPageState();
}

class _SocietyandinteractionPageState extends State<SocietyandinteractionPage> {
  Quote? _quote;

  _fetchQuote() async {
    try {
      final quote = await QuotesServices().fetchSocietyAndInteractionQuotes();
      setState(() {
        _quote = quote;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchQuote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 85),
        child: Center(
          child:
              _quote == null
                  ? const CircularProgressIndicator()
                  : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        _quote!.text,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        _quote!.author,
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _fetchQuote,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
