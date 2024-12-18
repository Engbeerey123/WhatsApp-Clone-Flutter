import 'package:flutter/material.dart';
import 'package:whatsapp_chat/list_date.dart';

class status_page extends StatefulWidget {
  const status_page({super.key});

  @override
  State<status_page> createState() => _status_pageState();
}

class _status_pageState extends State<status_page> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        margin: const EdgeInsets.only(left: 20, bottom: 20),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 27,
                  backgroundImage: AssetImage("${chats[5]["image"]}"),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30)),
                    width: 25,
                    height: 25,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Status",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Top to add status update",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      Column(
          children: List.generate(chats.length, (index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: ListTile(
            leading: CircleAvatar(
              radius: 27,
              backgroundImage: AssetImage("${chats[index]["image"]}"),
            ),
            title: Text(chats[index]["name"]),
          ),
        );
      }))
    ]);
  }
}
