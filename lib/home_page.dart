import 'package:flutter/material.dart';
import 'package:kaboukabou/about_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AboutPage()), 
          );
        },
        child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6341D8),
              Color(0xFF6341D8),
              Color(0xFF6341D8),
              Color(0xFF362677),
            ],
            stops: [0.0, 0.0, 0.01, 1.0],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/Logo-KABOU-KABOU.png', 
            width: 200, 
            height: 200, 
            fit: BoxFit.contain, 
         ),
          ),
        ),
      ),
    );
  }
}
