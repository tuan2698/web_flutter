import 'package:demo_web/data.dart';
import 'package:demo_web/themes/ui_textstyle.dart';
import 'package:flutter/material.dart';

class MobileWidget extends StatelessWidget {
  const MobileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getImage(),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 30, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Điều khoản sử dụng", style: UITextStyle.black_W500_S28),
                getList()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getImage() => Image.asset(
        "assets/image_header.png",
        width: double.infinity,
        fit: BoxFit.fill,
      );

  Widget getTitle(String text) => Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Text(text, style: UITextStyle.black_W500_S16),
      );

  Widget getContent(String text) => Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: Text(text, style: UITextStyle.black_W400_S16),
      );

  Widget getList() => ListView.builder(
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getTitle(data.keys.elementAt(index)),
            getContent(data.values.elementAt(index))
          ],
        );
      });
}
