import 'package:flutter/material.dart';
import 'package:gradient_icons/gradient_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Gradient Icon Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Gradient linGradient = const LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [0.1, 0.7],
    colors: <Color>[
      Colors.amber,
      Colors.deepPurple,
    ],
  );
  Gradient appGradient =
      const RadialGradient(colors: [Colors.green, Colors.pink]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GradientIcon(Icons.cyclone_outlined, 50, linGradient),
            const SizedBox(
              height: 10,
            ),
            GradientIcon(Icons.circle, 50, appGradient),
            const SizedBox(
              height: 10,
            ),
            GradientIcon(Icons.square, 50, linGradient),
          ],
        ),
      ),
    );
  }
}
