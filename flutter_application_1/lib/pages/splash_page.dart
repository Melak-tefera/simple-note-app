import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/loginpage.dart';

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
                fontSize: 45,
                fontWeight: FontWeight.w900,
          
              ),
              ),
              SizedBox(height: 10,),
              Text("Capture your thoughts instantly",
              style: TextStyle(
                color: Colors.lightGreen[300],
                fontSize: 20,
                fontWeight: FontWeight.w600
                
              ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage())),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  width: double.infinity,
                  child: Center(child: Text("Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700
                  ),
                  )
                  ),
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}