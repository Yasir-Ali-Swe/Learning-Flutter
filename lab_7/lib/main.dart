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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.yellowAccent,
        ),
      ),
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

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E-Commerce",
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.brightness_6), onPressed: toggleTheme),
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
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Yasir Ali",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 0.5),
                    Text(
                      "ali.yasir@gmail.com",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
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
                  title: Text(
                    items[index],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
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
                    print(items[index]);
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
