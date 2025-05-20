import 'package:flutter/material.dart';
import 'package:logic_screen/screens/signup_screen.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isclicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset('assets/thanawi.jpeg', height: 120),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: "Email",
                  border: InputBorder.none,
                ),
              ),
              TextField(
                obscureText: isclicked ? true : false,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Password",
                  border: InputBorder.none,

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
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 48),
                ),
                onPressed: () {},
                child: Text("Sign In now"),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    child: Text("Sign up"),
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
