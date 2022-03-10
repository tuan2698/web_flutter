import 'package:demo_web/home/home_controller.dart';
import 'package:demo_web/home/widget/drawer/endDrawer.dart';
import 'package:demo_web/home/widget/termWidget.dart';
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
        endDrawer: const EndDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              getImage(context),
              Responsive(
                  desktop: getTabletTermWidget(),
                  mobile: getMobileTermWidget(),
                  tablet: getTabletTermWidget()),
            ],
          ),
        ),
      ),
    );
  }

  Widget getImage(BuildContext context) => Stack(
        children: [
          Image.network("assets/assets/image_header.png"),
          if (Responsive.isMobile(context))
            Builder(
              builder: (context) => InkWell(
                onTap: () => Scaffold.of(context).openEndDrawer(),
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10, top: 20),
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
        ],
      );

  Widget getTabletTermWidget() => Row(
        children: const [
          Expanded(flex: 3, child: Text("das")),
          Expanded(flex: 7, child: TermWidget()),
        ],
      );

  Widget getMobileTermWidget() => const TermWidget();
}
