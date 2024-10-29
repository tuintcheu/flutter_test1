import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      backgroundColor: Colors.brown,
      body: Column(
        //
        children: [
          SizedBox(
            width: 150,
            height: 150,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              'CONTACT',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 50,
            height: 50,
          ),
          Image.asset(
            'assets/tel.png',
            width: 200,
            height: 150,
          ),
          SizedBox(
            width: 200,
            height: 245,
          ),
          MenuBar(children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/acc");
              },
              icon: Icon(Icons.home),
              tooltip: 'ACCUEIL',
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/pro");
                },
                icon: Icon(Icons.info)),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/con");
                },
                icon: Icon(Icons.contact_page)),
          ]),
        ],
      ),
    );
  }
}
