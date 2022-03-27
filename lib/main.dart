import 'package:flutter/material.dart';

void main() {
  runApp(const EEPTWAPP());
}

class EEPTWAPP extends StatelessWidget {
  const EEPTWAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EEPTW | 輕菘教育平台",
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFF566CE7,
          <int, Color>{
            50: Color.fromARGB(255, 89, 147, 241),
            100: Color.fromARGB(255, 85, 145, 235),
            200: Color.fromARGB(255, 45, 107, 241),
            300: Color.fromARGB(255, 70, 82, 246),
            400: Color(0xFF42A5F5),
            500: Color(0xFF566CE7),
            600: Color(0xFF1E88E5),
            700: Color(0xFF1976D2),
            800: Color(0xFF1565C0),
            900: Color(0xFF0D47A1),
          },
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("輕菘教育平台"),
      ),
      body: Column(),
    );
  }
}
