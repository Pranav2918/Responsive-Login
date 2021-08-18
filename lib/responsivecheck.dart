import 'package:flutter/material.dart';
import 'package:responsive_app/responsive.dart';

class ResponsiveCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: centerWidget(context));
  }
}

Widget centerWidget(context) {
  return Center(
      child: Text(
    Responsive.isMobile(context)
        ? 'Hello'
        : Responsive.isTab(context)
            ? 'Namaste'
            : 'Hola',
    style: TextStyle(
        color: Responsive.isDesktop(context)
            ? Colors.red
            : Responsive.isTab(context)
                ? Colors.green
                : Colors.blue,
        fontSize: Responsive.isMobile(context)
            ? 22
            : Responsive.isTab(context)
                ? 35
                : 50),
  ));
}
