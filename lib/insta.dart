import 'package:flutter/material.dart';
import 'package:zz/insta_data.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listOfStoryModel.length,
                  itemBuilder: (context, index) {
                    return StoryItem(
                      title: listOfStoryModel[index].name,
                      storyImage: listOfStoryModel[index].storyImage,
                      colors: [Colors.red, Colors.pink],
                      shapes: BoxShape.circle,
                    );
                  },
                ),
              ),
            ],
            /*ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: listOfStoryModel.length,
                itemBuilder: (context, index) {
                  return StoryItem(
                    title: listOfStoryModel[index].name,
                    storyImage: listOfStoryModel[index].storyImage,
                    colors: [Colors.red, Colors.pink],
                    shapes: BoxShape.circle,
                  );
                },
              ),
            ],
          ), */
          ),
        ),
      ),
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
                  backgroundImage: NetworkImage(storyImage),
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
