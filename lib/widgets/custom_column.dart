import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  CustomColumn({super.key, required this.children});
  List<Widget> children;
  CrossAxisAlignment? _crossAxisAlignment;
  MainAxisAlignment? _mainAxisAlignment;
  Widget build(BuildContext context) {
    return Column(
      children: children,
    );
  }
}
