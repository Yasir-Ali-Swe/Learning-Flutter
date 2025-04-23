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
      theme: ThemeData(
        brightness: isDarkTheme ? Brightness.dark : Brightness.light,

        appBarTheme: AppBarTheme(
          backgroundColor: isDarkTheme ? Colors.blue : Colors.deepPurple,
          elevation: 4,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: isDarkTheme ? Colors.yellow : Colors.black,
          ),
          iconTheme: IconThemeData(
            color: isDarkTheme ? Colors.white : Colors.black,
          ),
        ),

        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: isDarkTheme ? Colors.white : Colors.green,
          ),
          bodyMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: isDarkTheme ? Colors.orangeAccent : Colors.blueAccent,
          ),
        ),

        cardTheme: CardTheme(
          color: isDarkTheme ? Colors.black : Colors.white,
          shadowColor: isDarkTheme ? Colors.white30 : Colors.black26,
          elevation: 5,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: isDarkTheme ? Colors.yellow : Colors.deepPurple,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      home: MainPage(toggleTheme: toggleTheme),
    );
  }
}

class MainPage extends StatelessWidget {
  final VoidCallback toggleTheme;
  const MainPage({super.key, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Theme"),
        actions: [
          IconButton(
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.toggle_on
                  : Icons.toggle_off,
              size: 30,
            ),
            onPressed: toggleTheme,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 60),

            Text("Yasir Ali", style: Theme.of(context).textTheme.bodyLarge),

            const SizedBox(height: 20),

            Text(
              "This is Medium Text",
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            const SizedBox(height: 40),

            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Yasir Ali",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Card Theme change on toggle",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color:
                            Theme.of(context).brightness == Brightness.dark
                                ? Colors.yellow
                                : Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
