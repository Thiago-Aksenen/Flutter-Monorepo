import 'package:flutter/material.dart';
import 'package:instagram_app/models/post.dart';

class AddPost extends StatefulWidget {
  final Post? post;
  const AddPost({super.key, this.post});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.post != null) {
      _titleController.text = widget.post!.title;
      _textController.text = widget.post!.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.post == null ? Text("Novo Post") : Text("Editando Post"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              //form para title
              TextFormField(
                decoration: InputDecoration(hint: Text("Digite seu título")),
                controller: _titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Entre com seu titulo';
                  }
                  return null;
                },
              ),
              //form para text
              TextFormField(
                decoration: InputDecoration(hint: Text("Digite seu texto")),
                controller: _textController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Entre com seu texto';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(const SnackBar(content: Text('Salvando')));

                    if (widget.post == null) {
                      Post newPost = Post(
                        title: _titleController.text,
                        text: _textController.text,
                      );
                      Navigator.pop(context, newPost);
                    } else {
                      widget.post?.title = _titleController.text;
                      widget.post?.text = _textController.text;
                      Navigator.pop(context);
                    }
                  }
                },
                child: const Text("Salvar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
