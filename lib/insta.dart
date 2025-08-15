import 'package:flutter/material.dart';
import 'package:zz/insta_post_data.dart';
import 'package:zz/insta_story_data.dart';
import 'package:intl/intl.dart';

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
                  title: listOfStoryModel[index].name,
                  storyImage: listOfStoryModel[index].storyImage,
                  colors: [Colors.red, Colors.pink],
                  shapes: BoxShape.circle,
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listOfPostModel.length,
              itemBuilder: (context, index) {
                return PostItem(
                  name: listOfPostModel[index].name,
                  likes: listOfPostModel[index].like,
                  profileImage: listOfPostModel[index].profileImage,
                  caption: listOfPostModel[index].caption,
                  postImage: listOfPostModel[index].postImage,
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
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Container(
            width: widths ?? 90,
            height: widths ?? 90,
            decoration: BoxDecoration(
              shape: shapes,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: colors,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(backgroundImage: NetworkImage(storyImage)),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
    required this.name,
    required this.likes,
    required this.profileImage,
    required this.caption,
    required this.postImage,
  });

  final String name;
  final int likes;
  final String profileImage;
  final String caption;
  final String postImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //pfp
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(profileImage)),
          title: Text(name, style: const TextStyle(color: Colors.white)),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined, color: Colors.white),
          ),
        ),
//post img
        Image.network(
          postImage,
          width: MediaQuery.sizeOf(context).width,
          height: 500,
          fit: BoxFit.fitWidth,
        ),

//post funcs
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                ),
              ),
              Text(
                NumberFormat.decimalPattern().format(likes),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment_outlined, color: Colors.white),
              ),
              const SizedBox(width: 16),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send, color: Colors.white),
              ),
            ],
          ),
        ),
//captoin
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            "$name: $caption ",
            style: const TextStyle(color: Colors.white),
          ),
        ),

        const SizedBox(height: 12),
      ],
    );
  }
}
