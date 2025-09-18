import 'package:flutter/material.dart';
import 'package:instagram_app/models/post.dart';
import 'package:instagram_app/views/add_post.dart';

class PostItem extends StatelessWidget {
  final Post post;
  final VoidCallback onLike; //é uma função que você passa pro PostItem pra ele chamar quando o ícone for clicado.
  final Function() deleteItem;
  const PostItem({
    super.key,
    required this.post,
    required this.onLike,
    required this.deleteItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        leading: IconButton(
          // A widget to display before the toolbar's title. Typically the leading widget is an Icon or an IconButton.
          onPressed: onLike, //tá aqui
          icon: post.liked
              ? const Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 255, 255, 255),
                )
              : const Icon(
                  Icons.favorite_border,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
        ),
        title: Text(post.title),
        titleTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.onInverseSurface,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        tileColor: Theme.of(context).colorScheme.primary,
        subtitle: Text(post.text),
        subtitleTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.onInverseSurface,
          fontSize: 12,
          fontWeight: FontWeight.w100,
        ),
        trailing: Wrap(
          children: [
            IconButton(
              //A widget to display after the title. Typically an Icon widget.
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddPost(post: post),
                  ),
                );
              },
              icon: Icon(Icons.edit, color: Colors.white),
            ),
            IconButton(
              //A widget to display after the title. Typically an Icon widget.
              onPressed: deleteItem,
              icon: Icon(Icons.delete, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
