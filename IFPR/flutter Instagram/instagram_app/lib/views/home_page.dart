import 'package:flutter/material.dart';
import 'package:instagram_app/components/post_item.dart';
import 'package:instagram_app/components/story_item.dart';
import 'package:instagram_app/models/post.dart';
import 'package:instagram_app/views/add_post.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post> _posts = [
    Post(title: "Titulo 1", text: "Texto exemplo 1", liked: false),
    Post(title: "Titulo 2", text: "Texto exemplo 2", liked: false),
  ];
  final List _storys = ['story 1', 'story 2', 'story 3'];
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddPost()),
          );
          if (result != null) {
            setState(() {
              _posts.add(Post(title: result[0], text: result[1]));
            });
          }
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddPost()),
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(title: const Text("Instagram Style App")),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: _storys.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return StoryItem(text: _storys[index]);
              },
            ),
          ),
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
