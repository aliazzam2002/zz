import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return MaterialApp(theme: ThemeData.dark(), home: Home());
=======
    return const MaterialApp(home: Home());
>>>>>>> Stashed changes
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< Updated upstream
        leading: Icon(Icons.arrow_back_ios_new, color: Colors.amber, size: 25),
        title: Text(
          "BATMAN",
          style: TextStyle(
            fontSize: 24.0,
            color: const Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            backgroundColor: const Color.fromARGB(255, 255, 193, 7),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_4_sharp),
            iconSize: 45,
            color: Colors.amber,
          ),
        ],
=======
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Color.fromARGB(255, 0, 0, 0),
          size: 25,
        ),
        title: Text(
          "BATMAN",
          style: TextStyle(
            fontSize: 24,
            color: const Color.fromARGB(255, 238, 255, 0),
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
>>>>>>> Stashed changes
      ),
      body: Center(
        child: Container(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,

<<<<<<< Updated upstream
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(32.0),
          ),
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              "Gotham Knight",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
=======
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(64),
          ),
          padding: EdgeInsets.all(16),
          child: Center(
            child: Text(
              "Hitler",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
>>>>>>> Stashed changes
            ),
          ),
        ),
      ),
    );
  }
}
