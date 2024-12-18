import 'package:flutter/material.dart';
import 'package:whatsapp_chat/list_community.dart';

class CommunitiesPage extends StatefulWidget {
  const CommunitiesPage({super.key});

  @override
  State<CommunitiesPage> createState() => _CommunitiesPageState();
}

class _CommunitiesPageState extends State<CommunitiesPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        margin: const EdgeInsets.only(left: 20, bottom: 20),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 228, 225, 225),
                  ),
                  child: const Icon(
                    Icons.group_outlined,
                    size: 40,
                  ),
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
                  "New community",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      Column(
          children: List.generate(communities.length, (index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: ListTile(
            leading: CircleAvatar(
              radius: 27,
              backgroundColor: const Color.fromARGB(255, 235, 229, 229),
              child: Icon(communities[index]["icon"]),
            ),
            title: Text(communities[index]["name"]),
            subtitle: Text(communities[index]["message"]),
            trailing: Text(communities[index]["date"]),
          ),
        );
      }))
    ]);
  }
}
