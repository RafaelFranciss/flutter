import 'package:flutter/material.dart';
import 'page1_RFTA.dart';
import 'page2_RFTA.dart';

void main() {
  runApp(HomepageRFTA());
}

class HomepageRFTA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,  
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue, 
        ),
      ),
      home: Homepage_RFTA(),
    );
  }
}

class Homepage_RFTA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Home Page!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
              child: Text('Navigate to Page 1'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
              child: Text('Navigate to Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
