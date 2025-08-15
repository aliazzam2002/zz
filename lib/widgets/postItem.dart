import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zz/model/post_model.dart';

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
required this.obj,
  });

final PostModel obj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //pfp
        ListTile(
          leading: CircleAvatar(backgroundImage: NetworkImage(obj.profileImage)),
          title: Text(obj.name, style: const TextStyle(color: Colors.white)),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined, color: Colors.white),
          ),
        ),
//post img
        Image.network(
          obj.postImage,
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
                NumberFormat.decimalPattern().format(obj.like),
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
            "${obj.name}: ${obj.caption} ",
            style: const TextStyle(color: Colors.white),
          ),
        ),

        const SizedBox(height: 12),
      ],
    );
  }
}