import 'package:flutter/material.dart';
import 'page2_RFTA.dart';  

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Page 1!',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
              child: Text('Go to Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}