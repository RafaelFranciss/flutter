import 'package:flutter/material.dart';
import 'package:project01/homepage_RFTA.dart';
import 'package:project01/page1_RFTA.dart';
import 'package:project01/page2_RFTA.dart';
import 'package:project01/signup_RFTA.dart';
import 'homepage_RFTA.dart';
import 'page1_RFTA.dart';
import 'page2_RFTA.dart';
import 'signup_RFTA.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 18,
            color: Colors.amberAccent,
          ),
        ),
      ),
      home: LoginPage(),
      routes: {
        '/homepage': (context) => Homepage_RFTA(),
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacementNamed(context, '/homepage');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both username and password.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              '../assets/cat.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            Text('Sign In', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Please enter your details'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(labelText: 'Username'),
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _handleLogin,
                    child: Text('Login'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}