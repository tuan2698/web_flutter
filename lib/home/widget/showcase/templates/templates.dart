
import 'package:demo_web/home/widget/showcase/core/template.dart';
import 'package:demo_web/home/widget/showcase/templates/simple_template.dart';

class Templates {
  static Template get simple => SimpleTemplate();
  static Template get simpleReverse => SimpleTemplate(reverse: true);
}
