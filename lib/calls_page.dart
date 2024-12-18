import 'package:flutter/material.dart';
import 'package:whatsapp_chat/list_date.dart';

class calls_page extends StatefulWidget {
  const calls_page({super.key});

  @override
  State<calls_page> createState() => _calls_pageState();
}

class _calls_pageState extends State<calls_page> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Favourites",
            style: TextStyle(fontSize: 16),
          ),
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.green),
              child: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
            const Text(
              "   Add Favourites",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Recent",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: List.generate(
            chats.length,
            (index) => ListTile(
              leading: CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage("${chats[index]["image"]}"),
              ),
              title: Text(chats[index]["name"]),
              subtitle: Text(chats[index]["date"]),
              trailing: const Text(
                "📞 ",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        )
      ],
    );
  }
}
