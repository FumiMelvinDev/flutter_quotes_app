import 'package:flutter/material.dart';
import 'package:quotary_app/models/quote_model.dart';
import 'package:quotary_app/services/quotes_services.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Quote? _quote;

  final ScreenshotController _screenshotController = ScreenshotController();

  _fetchQuote() async {
    try {
      final quote = await QuotesServices().fetchRandomQuote();
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
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child:
              _quote == null
                  ? const CircularProgressIndicator()
                  : Screenshot(
                    controller: _screenshotController,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          width: constraints.maxWidth,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent.shade100,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned.fill(
                                child: CustomPaint(
                                  painter: _FunShapesPainter(),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 48,
                                  horizontal: 24,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      _quote!.text,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black87,
                                      ),
                                      textAlign: TextAlign.center,
                                      textHeightBehavior: TextHeightBehavior(
                                        applyHeightToFirstAscent: false,
                                        applyHeightToLastDescent: false,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      _quote!.author,
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'refresh',
            onPressed: _fetchQuote,
            child: const Icon(Icons.refresh),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'share',
            onPressed: () async {
              final image = await _screenshotController.capture(
                pixelRatio: 4.0,
              );
              if (image != null) {
                final directory = await getTemporaryDirectory();
                final imagePath =
                    await File('${directory.path}/quote.png').create();
                await imagePath.writeAsBytes(image);
                await Share.shareXFiles([
                  XFile(imagePath.path),
                ], text: 'Check out this quote!');
              }
            },
            child: const Icon(Icons.share),
          ),
        ],
      ),
    );
  }
}

class _FunShapesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint1 =
        Paint()
          ..color = Colors.purpleAccent.withOpacity(0.2)
          ..style = PaintingStyle.fill;
    final paint2 =
        Paint()
          ..color = Colors.yellowAccent.withOpacity(0.15)
          ..style = PaintingStyle.fill;
    final paint3 =
        Paint()
          ..color = Colors.pinkAccent.withOpacity(0.15)
          ..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(size.width * 0.2, size.height * 0.2), 40, paint1);
    canvas.drawCircle(Offset(size.width * 0.8, size.height * 0.3), 30, paint2);
    canvas.drawCircle(Offset(size.width * 0.7, size.height * 0.8), 40, paint3);
    canvas.drawCircle(Offset(size.width * 0.3, size.height * 0.7), 30, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
