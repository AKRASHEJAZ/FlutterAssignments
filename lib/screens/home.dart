import 'package:flutter/material.dart';
import 'package:myapp/customWidgets/CustomListTile.dart';
import 'package:myapp/customWidgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Ask Meta AI or Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 8.0,
                  children: [
                    OutlinedButton(
                      onPressed: () => {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Colors.green.shade100,
                        ),
                      ),
                      child: Text(
                        "All",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () => {},
                      child: Text(
                        "Unread",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () => {},
                      child: Text(
                        "Favourite",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () => {},
                      child: Text(
                        "Groups",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () => {},
                      child: Text(
                        "Pending Orders",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () => {},
                      child: Text(
                        "New Customers",
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                CustomListTile("AbdulMoiz", "Chats", 2, "01:18 PM"),
                CustomListTile("UbaidUllah 💪", "Chats", 3, "09:12 AM"),
                CustomListTile("Hammad Khan", "Chats", 4, "03:56 AM"),
                CustomListTile("Shahab Khan", "Chats", 5, "07:43 AM"),
                CustomListTile("SyedMoon", "Chats", 6, "12:32 PM"),
                CustomListTile("Abdul Moiz Jamil", "Chats", 7, "01:18 PM"),
                CustomListTile("Partner 😎", "Chats", 8, "09:12 AM"),
                CustomListTile("Baba", "Chats", 9, "03:56 AM"),
                CustomListTile("Hamu Kaka", "Chats", 10, "07:43 AM"),
                CustomListTile("Diya Awan ❤️", "Chats", 10, "07:43 AM"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Icon(Icons.lock_outline),
                  ),
                  Text(
                    "Your Personal messages are end-to-end encrypted",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.only(bottom: 100)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.message, color: Colors.white),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.message),
              iconSize: 32,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.call), iconSize: 32),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt),
              iconSize: 32,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              iconSize: 32,
            ),
          ],
        ),
      ],
      persistentFooterAlignment: AlignmentDirectional.center,
    );
  }
}
