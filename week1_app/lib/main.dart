import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            resizeToAvoidBottomPadding: false,
            appBar: AppBar(
              title: Text("FORM LOGIN & REGISTER"),

            ),
            body: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  width: 400,
                  height: 250,
                  child: Image.network(
                        "https://image.freepik.com/free-vector/account-concept-illustration_114360-399.jpg"),
                ),
                Container(
                  child: Form(
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 20),
                          TextFormField(
                            decoration:
                            InputDecoration(hintText: "Masukkan Username"),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration:
                            InputDecoration(hintText: "Masukkan Password"),
                          ),
                          SizedBox(height: 10),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.lightGreen,
                            elevation: 10,
                            child: Text("LOG IN"),
                            onPressed: () {},
                          ),
                          SizedBox(height: 10),
                          Text("Anda Belum memiliki account? silahkan register"),
                          SizedBox(height: 150),
                          Text(
                            "wekaEM Technologies",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text("2020", style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                )
              ],
            )));
  }
}