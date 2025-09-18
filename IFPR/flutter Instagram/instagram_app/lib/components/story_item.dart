import 'package:flutter/material.dart';
import 'package:instagram_app/models/story.dart';

class StoryItem extends StatelessWidget {
  final Story story;
  const StoryItem({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inversePrimary,
              shape: BoxShape.circle,
            ),
            child: Center(child: Icon(story.icon, size: 20)),
          ),
          Center(child: Text(story.title)),
        ],
      ),
    );
  }
}
