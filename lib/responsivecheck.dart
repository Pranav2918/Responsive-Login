import 'package:flutter/material.dart';
import 'package:responsive_app/responsive.dart';

class ResponsiveCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: Container(color: Colors.pink),
        desktop: Container(color: Colors.black),
        tab: Container(color: Colors.red),
      ),
    );
  }
}
