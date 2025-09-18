import 'package:flutter/material.dart';
import 'package:instagram_app/models/story.dart';

class AddStory extends StatefulWidget {
  final Story? story;
  const AddStory({super.key, this.story});

  @override
  State<AddStory> createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  final _formKey = GlobalKey<FormState>();
  IconData? _selectedIcon;
  final TextEditingController _titleController = TextEditingController();
  final List<IconData> _icons = [
    Icons.star,
    Icons.favorite,
    Icons.coffee,
    Icons.book,
    Icons.pets,
  ];

  @override
  void initState() {
    super.initState();
    if (widget.story != null) {
      _titleController.text = widget.story!.title;
      _selectedIcon =
          widget.story!.icon; // Initialize selected icon for editing
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.story == null
            ? const Text("Novo Story")
            : const Text("Editando Story"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close),
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
                decoration: const InputDecoration(
                  hintText: "Digite seu título",
                ),
                controller: _titleController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Entre com seu titulo';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              // ícones disponíveis
              Wrap(
                spacing: 10,
                children: _icons.map((icon) {
                  return IconButton(
                    icon: Icon(
                      icon,
                      color: _selectedIcon == icon ? Colors.blue : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIcon = icon;
                      });
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() &&
                      _selectedIcon != null) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(const SnackBar(content: Text('Salvando')));

                    final newStory = Story(
                      title: _titleController.text,
                      icon: _selectedIcon!,
                    );

                    Navigator.pop(context, newStory); // Pass the new story back
                  } else if (_selectedIcon == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Por favor, selecione um ícone!'),
                      ),
                    );
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
