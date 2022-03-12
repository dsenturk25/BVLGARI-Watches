import "package:flutter/material.dart";
import './home.dart';

void main(List<String> args) {
  runApp(ApiOps());
}

class ApiOps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ApiOpsHome(),
    );
  }
}
