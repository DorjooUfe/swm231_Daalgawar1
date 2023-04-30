import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Daalgawar1(title: 'Даалгавар 1'),
    );
  }
}

class Daalgawar1 extends StatefulWidget {
  const Daalgawar1({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Daalgawar1> createState() => _Daalgawar1State();
}

class _Daalgawar1State extends State<Daalgawar1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            TextButton(
                onPressed: () async {
                  launchUrl(Uri(scheme: "tel", path: ""));
                },
                child: Text('Дуудлага хийх')),
            TextButton(
                onPressed: () async {
                  await launchUrl(Uri.parse(
                      'https://online.ufe.edu.mn/course/view.php?id=7043'));
                },
                child: Text('Вэб сайт орох')),
            TextButton(
                onPressed: () {
                  launchUrl(Uri.parse(
                      'google.navigation:q=47.9196132,106.9317199&mode=d'));
                },
                child: Text('Байршил тодорхойлох')),
            TextButton(
                onPressed: () async {
                  await launchUrl(Uri.parse(
                      'https://www.google.com/search?client=firefox-b-d&q=ufe'));
                },
                child: Text('Гүүглээс хайлт хийх')),
            TextButton(
                onPressed: () async {
                  launchUrl(Uri(scheme: "sms", path: ""));
                },
                child: Text('Мессеж бичих')),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
