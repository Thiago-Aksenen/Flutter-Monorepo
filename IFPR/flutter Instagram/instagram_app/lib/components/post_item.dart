import 'package:flutter/material.dart';
import 'package:instagram_app/models/post.dart';

class PostItem extends StatelessWidget {
  final Post post;
  final VoidCallback onLike; //é uma função que você passa pro PostItem pra ele chamar quando o ícone for clicado.
  const PostItem({super.key, required this.post, required this.onLike});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: 
      ListTile(
        leading: IconButton(
        onPressed: onLike, //tá aqui
        icon: post.liked
            ? const Icon(Icons.favorite)
            : const Icon(Icons.favorite_border),
        ),
        title: Text(post.title),
        tileColor: Theme.of(context).colorScheme.primary,
        subtitle: Text(post.text),
      ),
    );
  }
}
