import 'package:flutter/material.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    var isMobile = MediaQuery.of(context).size.width < 600;
    return Container(
      // /margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffdadedfd3), // Change the color of the border here
            width: 1.0, // Change the thickness of the border here
          ),
        ),
      ),
      child: AppBar(
        toolbarHeight: isMobile ? 100 : 200,
        title: title,
        centerTitle: false,
        backgroundColor: Colors.transparent, // Make the AppBar transparent
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),// Remove the shadow below the AppBar
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}