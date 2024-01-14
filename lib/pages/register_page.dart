import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final nameTextController = TextEditingController();
  final surnameTextController = TextEditingController();
  final phoneTextController = TextEditingController();
  final emailTextController = TextEditingController();
  String selectedBranch = 'Branch 1';
  String selectedRole = 'Role 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Command of Faith Miracle Ministries',
                style: TextStyle(fontSize: 25),
              ),

              const SizedBox(height: 20),
              Image.asset('images/logo.jpg', width: 250, height: 250), // Adjust the path and size as needed

              const Text(
                'Register',
                style: TextStyle(fontSize: 25),
              ),
              // Name TextField
              TextField(
                controller: nameTextController,
                decoration: InputDecoration(hintText: 'Name'),
              ),
              const SizedBox(height: 10),

              // Surname TextField
              TextField(
                controller: surnameTextController,
                decoration: InputDecoration(hintText: 'Surname'),
              ),
              const SizedBox(height: 10),

              // Phone TextField
              TextField(
                controller: phoneTextController,
                decoration: InputDecoration(hintText: 'Phone Number'),
              ),
              const SizedBox(height: 10),

              // Email TextField
              TextField(
                controller: emailTextController,
                decoration: InputDecoration(hintText: 'Email'),
              ),
              const SizedBox(height: 10),

              // Branch Dropdown
              DropdownButton<String>(
                value: selectedBranch,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedBranch = newValue!;
                  });
                },
                items: <String>['Branch 1', 'Branch 2', 'Branch 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 10),

              // Role Dropdown
              DropdownButton<String>(
                value: selectedRole,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedRole = newValue!;
                  });
                },
                items: <String>['Role 1', 'Role 2', 'Role 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),

              // Register Button
              ElevatedButton(
                onPressed: () {
                  // Add registration functionality
                },
                child: const Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
