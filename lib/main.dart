import 'package:flutter/material.dart';
import 'package:whatsapp_chat/Status_page.dart';
import 'package:whatsapp_chat/calls_page.dart';
import 'package:whatsapp_chat/chat_page.dart';
import 'package:whatsapp_chat/communities_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List pages = [
    const chat_page(),
    const status_page(),
    const CommunitiesPage(),
    const calls_page()
  ];
  List flaoting = [
    const Icon(
      Icons.add_comment_outlined,
      color: Colors.white,
    ),
    const Icon(Icons.camera_alt_outlined, color: Colors.white),
    const Icon(Icons.group, color: Colors.white),
    const Icon(Icons.add_call, color: Colors.white)
  ];
  int currentfloat = 0;
  List appbars = [
    const Text(
      "Whats App",
      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
    ),
    const Text(
      "Status",
      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
    ),
    const Text(
      "Community",
      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
    ),
    const Text(
      "Calls",
      style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
    ),
  ];
  int currentindexpage = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: appbars[currentindexpage],
          actions: const [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 15,
            ),
            Icon(Icons.search_outlined),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert_outlined),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: flaoting[currentindexpage]),
        body: pages[currentindexpage],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          currentIndex: currentindexpage,
          onTap: (value) {
            setState(() {
              currentindexpage = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_outline_sharp),
              label: "Status",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.group),
              label: "Communities",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined),
              label: "Calls",
            ),
          ],
        ),
      ),
    );
  }
}
