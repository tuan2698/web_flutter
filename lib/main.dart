import 'package:demo_web/home/home_controller.dart';
import 'package:demo_web/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(HomeController());
  runApp(const HomePage());
}