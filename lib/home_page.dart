import 'package:demo_web/reponsive.dart';
import 'package:demo_web/widget/mobile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, _) => const Scaffold(
        body: Responsive(
            desktop: MobileWidget(),
            mobile: MobileWidget(),
            tablet: MobileWidget()),
      ),
    );
  }

  Widget getImage() => Image.network(
        "assets/image_header.png",
        // height: 200,
        width: double.infinity,
        fit: BoxFit.fill,
      );
}
