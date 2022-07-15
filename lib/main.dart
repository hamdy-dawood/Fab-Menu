import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';

import 'new_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

const fabOpenColor = Color(0xFFFFC72C);
const fabCloseColor = Color(0xFFFFC72C);
const ringColor = Color(0xFFFFC72C);

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'FAB Circular Menu',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF27251F)),
            ),
            Text(
              "@hamdy_khalid_",
              style: TextStyle(
                color: Color.fromARGB(153, 144, 144, 144),
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FabCircularMenu(
          fabSize: 60,
          fabElevation: 0,
          ringWidth: 120,
          fabOpenColor: fabOpenColor,
          fabCloseColor: fabCloseColor,
          ringColor: ringColor,
          children: [
            InkWell(
                child: const Icon(
                  Icons.home,
                  size: 35,
                  color: Color(0xFFDA291C),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewScreen('Home'),
                      ));
                }),
            InkWell(
                child: const Icon(
                  Icons.shopping_cart,
                  size: 35,
                  color: Color(0xFFDA291C),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewScreen('Cart'),
                      ));
                }),
            InkWell(
                child: const Icon(
                  Icons.favorite,
                  size: 35,
                  color: Color(0xFFDA291C),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewScreen('Favourite'),
                      ));
                }),
            InkWell(
                child: const Icon(
                  Icons.settings,
                  size: 35,
                  color: Color(0xFFDA291C),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewScreen('Settings'),
                      ));
                }),
          ]),
    );
  }
}
