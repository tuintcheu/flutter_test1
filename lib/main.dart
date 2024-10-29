import 'package:flutter/material.dart';
import 'Acceuil.dart';
import 'Contact.dart';
import 'Propos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEST1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'hello flutter'),
      initialRoute: '/',
      routes: {
        '/acc': (context) => Acceuil(),
        '/con': (context) => Contact(),
        '/pro': (context) => Propos(),
      },
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //   title: Text(
        //     widget.title,
        //   ),
        // ),
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'hello world!!', // Texte

                style: TextStyle(
                  color: Colors.red,
                  fontSize: 50,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
                height: 20), // Ajout d'un espacement entre le texte et l'image
            Image.asset(
              // Utilisation d'une image locale
              'assets/Earth.webp', // Remplacez ceci par le chemin de votre image
              width: 300, // Largeur de l'image
              height: 200, // Hauteur de l'image
            ),
          ],
        ),
        floatingActionButton: Container(
          width: 100,
          height: 50,
          child: FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, '/acc');
              },
              tooltip: 'EXO2',
              hoverColor: Colors.blueAccent,
              backgroundColor: Colors.indigo,
              child: Icon(
                Icons.skip_next,
                color: Colors.red,
              )),
        ));
  }
}
