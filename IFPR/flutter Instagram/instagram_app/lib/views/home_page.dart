import 'package:flutter/material.dart';
import 'package:instagram_app/components/post_item.dart';
import 'package:instagram_app/components/story_item.dart';
import 'package:instagram_app/models/post.dart';
import 'package:instagram_app/models/story.dart';
import 'package:instagram_app/views/add_post.dart';
import 'package:instagram_app/views/add_story.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Post> _posts = [
    Post(title: "Titulo 1", text: "Texto exemplo 1", liked: false),
    Post(title: "Titulo 2", text: "Texto exemplo 2", liked: false),
  ];
  final List<Story> _storys = [
    Story(title: "Story 1", icon: Icons.home),
    Story(title: "Story 2", icon: Icons.heart_broken),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Instagram Style App"))),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddPost()),
          );
          if (result != null) {
            setState(() {
              _posts.add(result);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          // Row for stories
          SizedBox(
            height: 120, // Adjusted height to make space for the button
            child: Row(
              children: [
                // "Add Story" button with user profile image look
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddStory(),
                            ),
                          );
                          if (result != null) {
                            setState(() {
                              _storys.add(result);
                            });
                          }
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(child: Icon(Icons.add, size: 20)),
                        ),
                      ),
                      const Text("Your Story"),
                    ],
                  ),
                ),
                // Horizontal list of stories
                Expanded(
                  child: ListView.builder(
                    itemCount: _storys.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () async {
                          final edited = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  AddStory(story: _storys[index]),
                            ),
                          );
                          if (edited != null) {
                            setState(() {
                              _storys[index] = edited;
                            });
                          }
                        },
                        onLongPress: () {
                          setState(() {
                            _storys.removeAt(index);
                          });
                        },
                        child: StoryItem(story: _storys[index]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // Expanded section for posts
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return PostItem(
                  post: _posts[index],
                  onLike: () {
                    setState(() {
                      _posts[index] = Post(
                        title: _posts[index].title,
                        text: _posts[index].text,
                        liked: !_posts[index].liked,
                      );
                    });
                  },
                  deleteItem: () => deletePost(index),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  deletePost(int index) {
    setState(() {
      _posts.removeAt(index);
    });
  }
}
