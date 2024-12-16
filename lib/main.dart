import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  // Hide the Status Bar
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Light/Dark Neumorphism Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
          title: "Light/Dark Neumorphism"), // Home screen widget
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isLightMode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar setup
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white70),
        ),
      ),
      backgroundColor: isLightMode ? Colors.grey[300] : Colors.grey[850],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              // Container that holds the neumorphism UI element
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                color: isLightMode ? Colors.grey[300] : Colors.grey[850],
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  // Neumorphism shadows - light shadow for "raised" effect
                  BoxShadow(
                    blurRadius: 15.0,
                    color: isLightMode
                        ? Colors.white
                        : Colors.grey[800] ?? Colors.grey, // Light shadow color
                    offset: Offset(-4.0,
                        -4.0), // Shadow offset to create the "inset" effect
                    spreadRadius: 1.0, // Spread of the shadow
                  ),
                  // Neumorphism shadows - dark shadow for depth
                  BoxShadow(
                    blurRadius: 15.0,
                    color: isLightMode
                        ? Colors.grey[500] ?? Colors.grey
                        : Colors.grey[900] ?? Colors.grey, // Dark shadow color
                    offset: Offset(4.0, 4.0), // Shadow offset for depth
                    spreadRadius: 1.0, // Spread of the shadow
                  ),
                ],
              ),
              child: Icon(
                // Icon placed inside the neumorphism container
                Icons.flutter_dash_rounded,
                size: MediaQuery.of(context).size.width * 0.28,
                color: isLightMode ? Colors.black : Colors.white70,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                    backgroundColor: Colors.white70,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      isLightMode = true;
                    });
                  },
                  child: Text("Light"),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white70,
                  ),
                  onPressed: () {
                    setState(() {
                      isLightMode = false;
                    });
                  },
                  child: Text("Dark"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
