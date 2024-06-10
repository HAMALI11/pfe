import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
        backgroundColor: Color.fromARGB(255, 31, 117, 50),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green, Colors.teal],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Nom'),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Prénom'),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Action pour enregistrer l'utilisateur
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
