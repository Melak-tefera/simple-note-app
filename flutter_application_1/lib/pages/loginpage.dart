import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/signuppage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
                Icons.lock_outline,
                size: 60,
                color: Colors.lightGreen,
              ),

              const SizedBox(height: 16),

              // Subtitle
              const Text(
                "Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 18,
                ),
              ),

              const SizedBox(height: 40),

              // Email / Username field
              TextField(
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
                onPressed: () {
                  // TODO: handle login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 16),
                ),
              ),

              const SizedBox(height: 24),

              // Optional row (e.g. "Forgot password?" / "Sign up")
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  TextButton(
                    onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage())),
                    child: const Text("Sign up"),
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