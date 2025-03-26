import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isDarkTheme = false;
  void toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

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
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w900,
            color: Colors.yellowAccent,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          Icon(Icons.search, color: Colors.yellowAccent, size: 30),
          SizedBox(width: 1),
          Icon(Icons.toggle_on, color: Colors.green, size: 35),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                CircleAvatar(radius: 30, child: Icon(Icons.person, size: 30)),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Yasir Ali",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
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
            child: Center(
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
                    leading: Icon(Icons.add, color: Colors.green, size: 30),
                    trailing: Icon(Icons.remove, color: Colors.red, size: 30),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("You Taped on ${items[index]}"),
                          duration: Duration(seconds: 1),
                        ),
                      );
                      print(items[index]);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
