import 'dart:async';

import 'package:flutter/material.dart';


class InicialView extends StatefulWidget {
  @override
  _InicialViewState createState() => _InicialViewState();
}

class _InicialViewState extends State<InicialView> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.of(context).pushReplacementNamed('/home'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.pink.shade800,
                Colors.purple.shade800,
              ],
            )
          )
      ),
      
    );
  }
}