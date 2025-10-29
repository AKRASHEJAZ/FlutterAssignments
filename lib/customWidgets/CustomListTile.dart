import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final int index;
  const CustomListTile(
    this.title,
    this.subtitle,
    this.index,
    this.time, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 26,
        backgroundImage: NetworkImage(
          'https://picsum.photos/200?random=$index',
        ),
      ),

      title: Text(
        title,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle, style: TextStyle(fontSize: 16)),
      trailing: Text(time, style: TextStyle(fontSize: 13)),
    );
  }
}
