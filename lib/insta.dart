import 'package:flutter/material.dart';
import 'package:zz/insta_post_data.dart';
import 'package:zz/insta_story_data.dart';
import 'package:intl/intl.dart';
import 'package:zz/widgets/postItem.dart';
import 'package:zz/widgets/storyItem.dart';

class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset("assets/png/Camera.png", color: Colors.white),
        ),
        title: const Text(
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
      body: Column(
        children: [
          SizedBox(
            height: 125,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listOfStoryModel.length,
              itemBuilder: (context, index) {
                return StoryItem(
                  obj: listOfStoryModel[index],

                );
              },
            ),
          ),
          
          Expanded(
            child: ListView.builder(
              itemCount: listOfPostModel.length,
              itemBuilder: (context, index) {
                return PostItem(
                  obj: listOfPostModel[index],
                
                );
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: bottombar(),
    );
  }

  BottomNavigationBar bottombar() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset("assets/png/Tab 1.png", color: Colors.white),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/png/Tab 2.png", color: Colors.white),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/png/Tab 3.png", color: Colors.white),
          label: "Reels",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/png/Tab 4.png", color: Colors.white),
          label: "Likes",
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 12,
            backgroundImage: NetworkImage(
              "https://t3.ftcdn.net/jpg/02/58/89/90/360_F_258899001_68CalsKTRk6PZQgWH9JhR4heBlncCko9.jpg",
            ),
          ),
          label: "Profile",
        ),
      ],
      currentIndex: 0,
      onTap: (index) {},
    );
  }
}



