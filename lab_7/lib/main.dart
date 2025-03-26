import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkTheme = false;

  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.deepPurple,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
        bodyLarge: TextStyle(fontSize: 16, color: Colors.black87),
        bodyMedium: TextStyle(fontSize: 14, color: Colors.black54),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
    );

    final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.deepPurple,
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white70,
        ),
        bodyLarge: TextStyle(fontSize: 16, color: Colors.white70),
        bodyMedium: TextStyle(fontSize: 14, color: Colors.white54),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
        foregroundColor: Colors.yellowAccent,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: isDarkTheme ? ThemeMode.dark : ThemeMode.light,
      home: MyHomePage(toggleTheme: toggleTheme),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final VoidCallback toggleTheme;

  const MyHomePage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'Iphone 200 usd',
      'Earbuds 20 usd',
      'SmartGlasses 25 usd',
      'SmartWatch 10 usd',
      'SmartSpeaker 240 usd',
      'SmartCamera 30 usd',
      'Laptop 18 usd',
      'MobilePhone 5 usd',
      'SmartTablet 15 usd',
    ];

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("E-Commerce", style: textTheme.titleMedium),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.brightness_6,
              color: Theme.of(context).appBarTheme.foregroundColor,
            ),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person, size: 30),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Yasir Ali", style: textTheme.titleMedium),
                    const SizedBox(height: 5),
                    Text("ali.yasir@gmail.com", style: textTheme.bodyMedium),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index], style: textTheme.bodyLarge),
                  leading: const Icon(Icons.add, color: Colors.green, size: 30),
                  trailing: const Icon(
                    Icons.remove,
                    color: Colors.red,
                    size: 30,
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("You tapped on ${items[index]}"),
                        duration: const Duration(seconds: 1),
                      ),
                    );
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
