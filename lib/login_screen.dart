import 'package:flutter/material.dart';
import 'package:signup_ui/main.dart';

var email = TextEditingController();
var password = TextEditingController();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to Login Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        fit: StackFit.expand, // makes image cover entire screen
        children: [
          // Background Image
          Image.asset(
            'assets/images/m.jpg', // your image path
            fit: BoxFit.cover, // scale image to cover
          ),
          // Semi-transparent overlay (optional, to make text more readable)
          Container(color: Colors.black.withOpacity(0.4)),
          // Main Login Card
          Center(
            child: Container(
              height: 390,
              width: 450,
              margin: EdgeInsets.all(12),
              child: Card(
                elevation: 6,
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 4,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          labelText: "Enter Email",
                          labelStyle: TextStyle(color: Colors.white),
                          suffixIconColor: Colors.white,
                          suffixIcon: Icon(Icons.email),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        controller: email,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 4,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.white),
                          suffixIconColor: Colors.white,
                          suffixIcon: Icon(Icons.password),
                        ),
                        obscuringCharacter: '*',
                        obscureText: true,
                        controller: password,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: InkWell(
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                    ),
                    SizedBox(height: 18),
                    Container(
                      width: 300,
                      child: ElevatedButton(
                        onPressed: () {
                          String mail = email.text.toString();
                          String pass = password.text.toString();

                          if (mail.isEmpty || pass.isEmpty) {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Alert'),
                                content: const Text(
                                  'None of the field can be empty',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Alert'),
                                content: const Text('SignedIn Successfully'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('OK'),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                        child: Text("Login Now"),
                      ),
                    ),
                    SizedBox(height: 9),
                    Container(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Signup()),
                          );
                        },
                        child: const Text(
                          "New on our Platform? Join us Here here",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
