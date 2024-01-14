import 'package:church_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:church_app/pages/register_page.dart';  // Adjust this import based on your project structure

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Additional widgets like image can be added here
              const Text(
                'Command of Faith Miracle Ministries',
                style: TextStyle(fontSize: 25),
              ),

              const SizedBox(height: 20),
              Image.asset('images/logo.jpg', width: 250, height: 250), // Adjust the path and size as needed

              const Text(
                'Login',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(height: 30),

              // Email TextField
              TextField(
                controller: emailTextController,
                decoration: InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(height: 10),

              // Password TextField
              TextField(
                controller: passwordTextController,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              const SizedBox(height: 10),

              // Forget Password
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    // Add forget password functionality
                  },
                  child: const Text(
                    'Forget password?',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Sign In Button
              ElevatedButton(
                onPressed: () {
                  // Add sign in functionality
                },
                child: const Text('Sign In'),
              ),
              const SizedBox(height: 10),

              // Register Now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?  ",
                    style: TextStyle(fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RegisterPage()),
                      );
                    },
                    child: const Text(
                      'Register now',
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
