import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/homepage.dart';
import 'package:flutter_application_1/services/authentication/auth_service.dart';


class SignUpPage extends StatefulWidget {
SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final service= AuthService();
  final email=TextEditingController();
  final password=TextEditingController();
  bool isloading=false;
  Future<void> signup()async{
    if (email.text.trim().isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.lightGreen,
          title: Center(
            child: const Text(
              'Error',
              style: TextStyle(color: Colors.white),
              )
            ),
          content: const Text(
            'Please enter your email', 
            style: TextStyle(color: Colors.white),
            ),
          actions: [
            TextButton(
               style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.lightGreen[800]),
              ),

              onPressed: () => Navigator.pop(context),
              child: const Text('OK',
              style: TextStyle(
                color: Colors.white,
                
              ),
              ),
            ),
          ],
        ),
      );
      return;
    }
    if (password.text.trim().isEmpty) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.lightGreen,
          title: Center(
            child: const Text(
              'Error',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
              )
              ),
          content:  const Text(
              'Please enter your password',
              style: TextStyle(
                color: Colors.white,
                
              ),
            ),
            
          actions: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.lightGreen[800]),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text('OK', style: TextStyle(color: Colors.white),),
            ),
          ],
        ),
      );
      return;
    }

    setState(() {
      isloading=true;
    });
    
    try {
      await service.signup(email: email.text, password: password.text
        );
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (_) =>  Homepage()),);
      
    } catch (e) {
      showDialog(
        context: context,
        builder: (context)=>AlertDialog(
           backgroundColor: Colors.lightGreen,
           title: Center(child: const Text("error",style: TextStyle(color: Colors.white),)),
           content:  Text("the error is $e", style: TextStyle(color: Colors.white), ),
           actions: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.lightGreen[800])
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text('OK',style: TextStyle(color: Colors.white),),
            ),
          ],

        ) );
      
    }
  }
  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();
    password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;

    return Scaffold(
    body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: size.height * 0.1),

              // Title
              const Text(
                "Simple Notes",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),

              const SizedBox(height: 40),

              // Icon
              const Icon(
                Icons.person_add,
                size: 60,
                color: Colors.lightGreen,
              ),

              const SizedBox(height: 16),

              // Subtitle
              const Text(
                "SignUp",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 40),

              // Email 
              TextField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'Enter Your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Password field
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Login button
              ElevatedButton(
                onPressed: ()=>signup(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: isloading ? Center(child: CircularProgressIndicator(),) : Text(
                  'SignUp',
                  style: TextStyle(fontSize: 16),
                ),
              ),

              const SizedBox(height: 24),

              // Optional row (e.g. "Forgot password?" / "Sign up")
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Do have an account? "),
                  TextButton(
                    onPressed: ()=> Navigator.pop(context),
                    child: const Text("Login"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}