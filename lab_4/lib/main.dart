import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: listView(),
    );
  }
}

class listView extends StatelessWidget {
  final List<String> items = [
    'iPhone 15 Pro',
    'Samsung Galaxy S24',
    'MacBook Air M3',
    'Dell XPS 15',
    'Sony PlayStation 5',
    'Xbox Series X',
    'AirPods Pro',
    'Samsung Galaxy Watch 6',
    'Apple iPad Pro',
    'Google Pixel 8',
  ];
  listView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List View Builder",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                items[index],
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.remove),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('You tapped on ${items[index]}.'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
