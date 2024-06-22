import 'package:demo_web/home/home_controller.dart';
import 'package:demo_web/home/widget/time_line_widget.dart';
import 'package:demo_web/reponsive.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, _) => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              getImage(context),
              Responsive(desktop: getWebContentWidget(), mobile: getMobileContentWidget(), tablet: getWebContentWidget()),
            ],
          ),
        ),
      ),
    );
  }

  Widget getImage(BuildContext context) => Image.network("assets/assets/image_header.jpeg",width: double.infinity,height: 1200,fit: BoxFit.fill,);

  Widget getWebContentWidget() => Container(height:1000,child: ShowcaseSuccessTimeline());

  Widget getMobileContentWidget() => Container();
}
