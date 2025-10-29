import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        "WhatsApp",
        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
      ),
      actions: const [
        IconButton(
          onPressed: null,
          icon: Icon(Icons.camera_alt_outlined, color: Colors.black),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.more_vert, color: Colors.black),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
