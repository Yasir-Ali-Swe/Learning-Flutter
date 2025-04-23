import 'package:flutter/material.dart';
import 'view_notes_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AddNotesPage(),
    );
  }
}

class AddNotesPage extends StatefulWidget {
  const AddNotesPage({super.key});

  @override
  State<AddNotesPage> createState() => _AddNotesPageState();
}

class _AddNotesPageState extends State<AddNotesPage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _notes = [];

  void _saveNote() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _notes.add(text);
        _controller.clear();
      });
    }
  }

  void _navigateToViewNotes() async {
    final updatedNotes = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ViewNotesPage(notes: _notes)),
    );

    if (updatedNotes != null && updatedNotes is List<String>) {
      setState(() {
        _notes.clear();
        _notes.addAll(updatedNotes);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notepade App"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: TextField(
                controller: _controller,
                expands: true,
                maxLines: null,
                textAlignVertical: TextAlignVertical.top,
                decoration: const InputDecoration(
                  labelText: "Enter your note",
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveNote,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              child: const Text("Save Note"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: _navigateToViewNotes,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
              child: const Text("View Notes"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Saved Notes",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child:
                  _notes.isEmpty
                      ? const Text("No notes yet.")
                      : ListView.builder(
                        itemCount: _notes.length,
                        itemBuilder:
                            (context, index) => Container(
                              margin: const EdgeInsets.symmetric(vertical: 4),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 10,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.blueAccent),
                              ),
                              child: Text(_notes[index]),
                            ),
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
