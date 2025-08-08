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
          "Instagram",
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
            StoryItem(
              title: "Bahaa Story",
              storyImage: "assets/png/Man.png",
              colors: [const Color.fromARGB(255, 251, 255, 0), Colors.cyan],
              shapes: BoxShape.circle,
              
            ),
            StoryItem(
              title: "Ahmad Story",
              storyImage: "assets/png/Man.png",
              colors: [const Color.fromARGB(255, 234, 25, 196), Colors.lime],
              shapes: BoxShape.circle,
            ),
            StoryItem(
              title: "Issac Story",
              storyImage: "assets/png/Man.png",
              colors: [const Color.fromARGB(248, 4, 223, 235), Colors.green],
              shapes: BoxShape.circle,
              widths: 50,
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
  const StoryItem({
    super.key,
    required this.title,
    required this.storyImage,
    required this.colors,
    required this.shapes,
    this.widths,
  });
  final String title;
  final String storyImage;
  final List<Color> colors;
  final BoxShape shapes;
  final double? widths;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          Container(
            width: widths ?? 100,
            height: widths ?? 100,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: colors,
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
                  backgroundImage: AssetImage(storyImage),
                  radius: 50,
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(title, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
