import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
SplashPage({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Simple Notes",
              style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 40,
                fontWeight: FontWeight.bold,
          
              ),
              ),
              Text("Capture your thoughts instantly",
              style: TextStyle(
                color: Colors.lightGreen[150],
                
              ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}