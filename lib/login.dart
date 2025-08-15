import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final TextEditingController emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: emailcontroller,
            onChanged: (value) {
              print(value);
              print(emailcontroller.text);
            },
            obscureText: true,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.abc),
              prefixIcon: Icon(Icons.access_alarm),
              hintText: "enter your pass",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(16),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(16),
              ),

              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
