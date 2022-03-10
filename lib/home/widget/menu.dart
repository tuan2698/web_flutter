import 'package:demo_web/themes/ui_textstyle.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "Liên hệ",
            style: UITextStyle.grey_W600_S28,
          ),
        );
      },
    );
  }
}
