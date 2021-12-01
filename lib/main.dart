import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: RegisterPage(),
    ),
  );
}

class RegisterPage extends StatelessWidget {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Image.asset("assets/prime_video.png",width: 70,),
          leading: Center(
            child: Text(
              "Back",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue
              ),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Icon(Icons.refresh),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create account",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      labelText: "Name"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      labelText: "Your email address"),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.blueGrey),
                      labelText: "Create a password"),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Theme(
                        data: ThemeData(
                          iconTheme: IconThemeData(color: Colors.blue),
                        ),
                        child: Icon(Icons.info)),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Password must be at least 6 characters",
                      style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: RaisedButton(
                    onPressed: () {
                      print("Create your Amazon Account was tapped");
                    },
                    child: Text(
                      "Create your Amazon Account",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: FlatButton(
                    onPressed: () {
                      print("Already have an account was tapped");
                    },
                    child: Text(
                      "Already have an account ?",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: RaisedButton(
                    onPressed: () {
                      print("Sign-In now was tapped");
                    },
                    child: Text(
                      "Sign-In now ",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
