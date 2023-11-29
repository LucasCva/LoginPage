import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget layoutMobile;
  final Widget layoutDesktop;

  const ResponsiveLayout(
      {super.key, required this.layoutMobile, required this.layoutDesktop});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return layoutMobile;
      } else {
        return layoutDesktop;
      }
    });
  }
}
