import 'package:flutter/material.dart';


class About extends StatefulWidget {
          @override
      _StateAbout createState() => _StateAbout();
}


class _StateAbout extends State<About> {

    @override  
    Widget build(BuildContext context) {
         return Container(
          child: Text("Xin chào đây là trang About"),
         );
    }
  
}