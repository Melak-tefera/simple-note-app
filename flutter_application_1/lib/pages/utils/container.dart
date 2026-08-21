import 'package:flutter/material.dart';

class Containerutil extends StatelessWidget {
  final String  title;
  Containerutil({super.key, required this.title});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(15)
                ),
                
                width: double.infinity,
                height: 70,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                
              ),
    );
  }
}