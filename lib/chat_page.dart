import 'package:flutter/material.dart';
import 'package:whatsapp_chat/list_date.dart';

class chat_page extends StatefulWidget {
  const chat_page({super.key});

  @override
  State<chat_page> createState() => _chat_pageState();
}

class _chat_pageState extends State<chat_page> {
  List chips = ["All", "Undread", "Favouraite", "Groups", "+"];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: chips.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 5),
                child: Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    label: Text(chips[index])),
              );
            },
          ),
        ),
        SizedBox(
          height: 60,
          child: ListTile(
              leading: const Icon(Icons.archive_outlined),
              trailing: Text(
                "${chats.length}",
              ),
              title: const Text("Archive")),
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
              subtitle: Text(chats[index]["message"]),
              trailing: Text(chats[index]["date"]),
            ),
          ),
        )
      ],
    );
  }
}
