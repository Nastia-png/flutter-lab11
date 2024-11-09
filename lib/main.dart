import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'color_provider.dart';
import 'color_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _provider = ColorProvider();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Color Picker')),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ChangeNotifierProvider.value(
            value: _provider,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SliderSection(),
                SizedBox(height: 20),
                PreviewContainer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
