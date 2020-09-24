import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
        centerTitle: true,
        title: Text(
          "Category",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
