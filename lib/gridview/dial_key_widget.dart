import 'package:flutter/material.dart';
import 'package:gridview_test/gridview/utility/themeProvider.dart';
import 'package:provider/provider.dart';

class DialKeys extends StatelessWidget {
  const DialKeys({
    this.letter,
    this.isColor = true,
    required this.numbers,
    super.key,
  });
  final String numbers;
  final String? letter;
  final bool isColor;
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: isColor
              ? Brightness.dark == true
                  ? theme.darkScheme.primary
                  : theme.lightScheme.primary
              : Colors.transparent,
          borderRadius: BorderRadius.circular(100)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            numbers,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: Colors.white, fontSize: 12),
          ),
          Text(
            letter!,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
