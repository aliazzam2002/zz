import 'package:flutter/material.dart';

class avatars extends StatelessWidget {
  const avatars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            color: Colors.white,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("assets/jpg/food.jpg"),
                radius: 60,
              ),
              SizedBox(height: 15),
              Text(
                "desert",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
