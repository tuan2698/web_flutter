import 'package:demo_web/home/widget/menu.dart';
import 'package:flutter/material.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [getHeader(), const Menu()],
      ),
    );
  }

  Widget getHeader() => Container(
        width: double.infinity,
        padding: const EdgeInsets.only(top: 30, bottom: 20),
        color: const Color(0xFF050F4B),
        child: Center(
            child: Image.network(
          "assets/assets/icon_app.png",
          height: 80,
          width: 200,
        )),
      );
}
