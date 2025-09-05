import 'package:flutter/material.dart';
import 'package:zz/insta.dart';
<<<<<<< HEAD
=======
import 'package:zz/signup.dart';
import 'package:zz/routes/routes.dart';
import 'package:zz/wel.dart';
>>>>>>> 530ca723a02d013fa4c69edb9444b6c6327d4fe4

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Instagram(), theme: ThemeData.dark() , 
    debugShowCheckedModeBanner: false,);
  }
}

class Lime extends StatelessWidget {
  const Lime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.lightGreen, width: 2),
          ),
          child: Column(
            children: [
              Center(
                child: Image.network(
                  "https://thumbs.dreamstime.com/b/fresh-lime-over-white-background-32867420.jpg",
                  height: 190,
                  width: 190,
                ),
              ),
              Text(
                "1.22\$",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightGreen,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Oeganic Lime",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "4pcs Fresh and healthy limes",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 60,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_bag_rounded,
                              color: Colors.white,
                              size: 35,
                            ),
                            Text(
                              "   add to cart",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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

class BT extends StatelessWidget {
  const BT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 900,
          width: 650,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Colors.pink, width: 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://thumbs.dreamstime.com/b/concept-design-super-sports-vehicle-car-auto-shop-logo-original-motor-silhouette-black-background-vector-illustration-70242426.jpg",

                height: 390,
                width: 390,
              ),
              Text(
                "Welcome to Flutter",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(offset: Offset(2, 2), color: Colors.pink)],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  height: 40,
                  width: 210,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(28),
                    border: Border.all(color: Colors.pink),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "   Continue with Email",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      width: 210,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(color: Colors.pink),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.g_mobiledata_rounded,
                              color: Colors.white,
                              size: 35,
                            ),
                            Text(
                              "Continue with Google",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Container(
                      height: 40,
                      width: 210,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(color: Colors.pink),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.apple, color: Colors.white, size: 20),
                            SizedBox(width: 8),
                            Text(
                              "Continue with Apple",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
