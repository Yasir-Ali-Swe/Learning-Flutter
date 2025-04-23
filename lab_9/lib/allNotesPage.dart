import 'package:flutter/material.dart';

class AllNotesPage extends StatelessWidget {
  final List<String> notes;

  const AllNotesPage({super.key, required this.notes});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Notes"),
        backgroundColor: Colors.blue,
      ),
      body:
          notes.isEmpty
              ? const Center(child: Text("No notes available."))
              : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: notes.length,
                itemBuilder:
                    (context, index) => Container(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.yellow.shade100,
                        border: Border.all(color: Colors.amber),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        notes[index],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
              ),
    );
  }
}
