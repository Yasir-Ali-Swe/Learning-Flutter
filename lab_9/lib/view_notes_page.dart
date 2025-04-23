import 'package:flutter/material.dart';

class ViewNotesPage extends StatefulWidget {
  final List<String> notes;

  const ViewNotesPage({super.key, required this.notes});

  @override
  State<ViewNotesPage> createState() => _ViewNotesPageState();
}

class _ViewNotesPageState extends State<ViewNotesPage> {
  late List<String> notesCopy;

  @override
  void initState() {
    super.initState();
    notesCopy = List.from(widget.notes);
  }

  void _deleteNote(int index) {
    setState(() {
      notesCopy.removeAt(index);
    });
  }

  @override
  void dispose() {
    Navigator.pop(context, notesCopy); // return updated list to main screen
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("View Notes"),
        backgroundColor: Colors.blue,
      ),
      body:
          notesCopy.isEmpty
              ? const Center(child: Text("No notes available."))
              : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: notesCopy.length,
                itemBuilder:
                    (context, index) => Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade100,
                        border: Border.all(color: Colors.amber),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Text(notesCopy[index])),
                          IconButton(
                            onPressed: () => _deleteNote(index),
                            icon: const Icon(Icons.delete, color: Colors.red),
                          ),
                        ],
                      ),
                    ),
              ),
    );
  }
}
