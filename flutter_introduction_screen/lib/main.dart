import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages = [
    PageViewModel(
      title: "Flutter Introduction Screen 1",
      body: "This is a simple introduction screen for Flutter.",
      // image: Center(
      //   child: Image.asset(
      //     "assets/images/flutter_introduction_screen.png",
      //     width: 200,
      //     height: 200,
      //   ),
      // ),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(fontSize: 16.0),
      ),
    ),
    PageViewModel(
      title: "Flutter Introduction Screen 2",
      body: "This is a simple introduction screen for Flutter.",
      // image: Center(
      //   child: Image.asset(
      //     "assets/images/flutter_introduction_screen.png",
      //     width: 200,
      //     height: 200,
      //   ),
      // ),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
        bodyTextStyle: TextStyle(fontSize: 16.0),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: _pages,
        onDone: () {},
        onSkip: () {},
        showSkipButton: true,
        skip: const Text("Skip"),
        next: const Icon(Icons.arrow_right),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }
}
