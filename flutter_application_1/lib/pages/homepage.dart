import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
Homepage({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(
      title: Text('Simple Notes',
       textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),

      ),
      actions: [
        Icon(Icons.logout_rounded)
      ],
      ),

   // body: ListView.custom(childrenDelegate: childrenDelegate),
    );
  }
}