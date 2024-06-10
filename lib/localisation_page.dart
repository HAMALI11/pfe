import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocalisationPage extends StatelessWidget {
  Future<void> _openGoogleMaps() async {
    const url = 'https://www.google.com/maps';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Impossible d\'ouvrir Google Maps';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Localisation Page'),
        backgroundColor: Color.fromARGB(255, 199, 102, 237),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 145, 31, 180),
              Color.fromARGB(255, 62, 140, 189)
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: _openGoogleMaps,
                child: Text('Localiser mes objets'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Action pour afficher les objets
                },
                child: Text('Mes objets'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
