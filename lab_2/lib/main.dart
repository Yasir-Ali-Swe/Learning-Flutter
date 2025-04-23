import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String assetImage = 'assets/avatar.jpeg';
  final String networkImage =
      'https://t3.ftcdn.net/jpg/03/58/93/04/360_F_358930412_rodvr4vvY4LG0bUG8MKC3wwCZhWGozcW.jpg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cards & Avatars',
      debugShowCheckedModeBanner: false,
      home: HomePage(assetImage: assetImage, networkImage: networkImage),
    );
  }
}

class HomePage extends StatelessWidget {
  final String assetImage;
  final String networkImage;

  const HomePage({
    super.key,
    required this.assetImage,
    required this.networkImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards & Avatars'),
        actions: [
          CircleAvatar(backgroundImage: AssetImage(assetImage)),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Card 1
            Card(
              color: Colors.blue[100],
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.blue),
                title: Text('Home Card'),
                trailing: Icon(Icons.star, color: Colors.orange),
              ),
            ),
            SizedBox(height: 10),

            // Card 2
            Card(
              color: Colors.green[100],
              child: ListTile(
                leading: Icon(Icons.settings, color: Colors.green),
                title: Text('Settings Card'),
                subtitle: Row(
                  children: [
                    Icon(Icons.wifi, size: 18),
                    SizedBox(width: 5),
                    Icon(Icons.bluetooth, size: 18),
                    SizedBox(width: 5),
                    Icon(Icons.battery_full, size: 18),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),

            // Card 3 - Large
            Container(
              width: double.infinity,
              height: 120,
              child: Card(
                color: Colors.purple[100],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.access_alarm, size: 30, color: Colors.purple),
                      Text('Large Card with Centered Content'),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),

            // Circle Avatars
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Asset Image'),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(assetImage),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text('Network Image'),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(networkImage),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
