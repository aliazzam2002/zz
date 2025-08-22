import 'package:flutter/material.dart';
import 'package:zz/login.dart';

class asd extends StatelessWidget {
  const asd({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(24),
            ),
            width: 150,
            height: 100,
            child: Center(
              child: Text(
                "Welcome",
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
