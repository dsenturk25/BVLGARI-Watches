// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import "package:flutter/material.dart";
import './functions/apiRequest.dart';

class ApiOpsHome extends StatefulWidget {
  @override
  _ApiOpsState createState() => _ApiOpsState();
}

class _ApiOpsState extends State<ApiOpsHome> {
  @override
  Widget build(BuildContext context) {
    request("https://api.kanye.rest/", "get", {})
        .then((value) => print(value["quote"]));
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Account Login",
          style: TextStyle(color: Colors.white, fontFamily: "Times"),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
          margin: EdgeInsets.only(top: 0),
          child: ListView(
            children: [
              Stack(children: [
                ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Color.fromRGBO(130, 130, 130, 1), BlendMode.modulate),
                    child: Image.network(
                      'https://media2.bulgari.com/f_auto,q_auto/production/dw6405e77d/images/images/1241058.png',
                    )),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(vertical: 100),
                  child: const Text(
                    'B V L G A R I\nWatches',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 54,
                      fontFamily: "Times New Roman",
                    ),
                  ),
                ),
              ]),
              Column(
                children: [
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(50, 50, 50, 1), width: 1),
                          ),
                          label: Text("E-Mail"),
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: "E-mail",
                          contentPadding: EdgeInsets.all(20.0),
                        ),
                      )),
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(50, 50, 50, 1), width: 1),
                          ),
                          label: Text("Password"),
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: "Password",
                          contentPadding: EdgeInsets.all(20.0),
                        ),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width - 20,
                      height: 50,
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(15, 15, 15, 1)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Log In',
                            style: TextStyle(fontSize: 18),
                          ))),
                ],
              )
            ],
          )),
    );
  }
}
