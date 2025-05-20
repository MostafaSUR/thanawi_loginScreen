import 'package:flutter/material.dart';
import 'package:logic_screen/screens/signin_screen.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _roles = ['User', 'Teacher', 'Admin'];
  String _selectedRole = 'User';
  bool isclicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 20),
              Image.asset('assets/thanawi.jpeg', height: 120),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: "Full Name",
                  border: InputBorder.none,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.calendar_today),
                  hintText: "Date of Birth",
                  border: InputBorder.none,
                  hoverColor: Colors.black,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.call),
                  border: InputBorder.none,
                  hintText: "Phone Number",
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  border: InputBorder.none,
                  hintText: "Email",
                ),
              ),
              TextField(
                obscureText: isclicked ? true : false,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  border: InputBorder.none,
                  hintText: "Password",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isclicked = !isclicked;
                        print(isclicked);
                      });
                    },
                    icon: Icon(
                      isclicked == true
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              DropdownButton<String>(
                value: _selectedRole,
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      _selectedRole = value;
                    });
                  }
                },
                items:
                    _roles.map((role) {
                      return DropdownMenuItem(value: role, child: Text(role));
                    }).toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 48),
                ),
                onPressed: () {},
                child: const Text("Sign UP now"),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Already have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignInPage()),
                      );
                    },
                    child: Text("Sign in"),
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
