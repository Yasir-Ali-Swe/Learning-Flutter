import 'package:flutter/material.dart';

class List_Builder extends StatelessWidget {
  List_Builder({super.key});
  final List<String> items = [
    "Iphone",
    "Macbook",
    "Earbuds",
    "Ipad",
    "Mouse",
    "Keyboard",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Builder",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              items[index],
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),
            leading: Icon(Icons.label, color: Colors.green),
            trailing: Icon(
              Icons.add,
              color: const Color.fromARGB(255, 2, 247, 11),
            ),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("You Taped on ${items[index]}")),
              );
            },
          );
        },
      ),
    );
  }
}
