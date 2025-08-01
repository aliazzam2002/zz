import 'package:flutter/material.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/png/Camera.png", color: Colors.white),
        ),
        title: Text(
          "Belguimgram",
          style: TextStyle(
            fontFamily: "cursive",
            fontWeight: FontWeight.w900,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/png/Stream.png", color: Colors.white),
          ),

          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/png/Messanger.png", color: Colors.white),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StoryItem(),
            SizedBox(width: 16),
            Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromRGBO(226, 3, 55, 1),
                        Color.fromRGBO(198, 1, 136, 1),
                        Color.fromRGBO(119, 0, 195, 1),
                      ],
                    ),
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(3),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/png/Women.png"),
                        radius: 50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text("Karennne", style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(width: 16),
            Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromARGB(255, 251, 170, 71),
                        Color.fromARGB(255, 217, 26, 71),
                        Color.fromARGB(255, 166, 15, 146),
                      ],
                    ),
                  ),
                  child: Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.all(3),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/png/Man.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text("Zackjohn", style: TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
      ),

      /*bottomNavigationBar: Column(
        children: [Container(child: Icon("assets/png/Home.png"))],
      ),*/
    );
  }
}

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromARGB(255, 251, 170, 71),
                Color.fromARGB(255, 217, 26, 71),
                Color.fromARGB(255, 166, 15, 146),
              ],
            ),
          ),
          child: Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.all(3),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/png/Man.png"),
                radius: 50,
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text("Your Story", style: TextStyle(color: Colors.white)),
      ],
    );
  }
}
