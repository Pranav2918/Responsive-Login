import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tab;
  final Widget desktop;
  const Responsive({
    Key? key,
    required this.mobile,
    required this.tab,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTab(BuildContext context) =>
      MediaQuery.of(context).size.width >= 651 &&
      MediaQuery.of(context).size.width <= 1100;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1100) {
          return desktop;
        } else if (constraints.maxWidth >= 650) {
          return tab;
        } else {
          return mobile;
        }
      },
    );
  }
}
