import 'package:flutter/material.dart';
import 'package:zz/model/story_model.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
required this.obj,

  });

final StoryModel obj;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Container(
            width:  90,
            height:90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red, Colors.pink],
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(backgroundImage: NetworkImage(obj.storyImage)),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            obj.name,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
