import 'package:demo_web/home/widget/showcase/core/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TemplateData {
  final String? title;
  final String? description;
  final List<LinkData>? links;
  final TemplateThemeData? theme;
  final LinkData? logoLink;

  TemplateData({
    this.theme,
    this.title,
    this.logoLink,
    this.description,
    this.links,
  });
}

class LinkData {
  final Widget? icon;
  final String? url;
  final String? title;

  LinkData({this.icon, this.url, this.title});

  factory LinkData.github(String url) {
    return LinkData(
      url: url,
      title: 'Github',
      icon: Icon(FontAwesomeIcons.github),
    );
  }

  factory LinkData.codePen(String url) {
    return LinkData(
      url: url,
      title: 'CodePen',
      icon: Icon(FontAwesomeIcons.codepen),
    );
  }

  factory LinkData.pub(String url) {
    return LinkData(
      url: url,
      title: 'Pub.dev',
      icon: Image.asset('assets/dart.png', package: 'flutter_showcase'),
    );
  }
}

abstract class Template {
  Widget builder({
    required BuildContext context,
    required TemplateData data,
    required Widget app,
  });

  Widget screenshotBuilder({
    required BuildContext context,
    required TemplateData data,
    required Widget app,
  }) =>
      builder(
        context: context,
        data: data,
        app: app,
      );
}
