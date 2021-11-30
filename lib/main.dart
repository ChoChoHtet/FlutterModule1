import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                print("Add button tapped");
              }),
          IconButton(
              icon: Icon(Icons.add_alarm),
              onPressed: () {
                print("Alarm button tapped");
              }),
        ],
        leading: Icon(
          Icons.arrow_back_ios_outlined,
          size: 30,
        ),
      ),
      body: Container(
        color: Color.fromRGBO(19, 19, 19, 1.0),
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Welcome! ",
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.white),
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  print("Sign in button tapped");
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                onPressed: () {
                  print("Recover Password tapped");
                },
                child: Text(
                  "Recover Password",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
