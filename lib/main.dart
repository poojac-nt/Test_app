import 'package:flutter/material.dart';
import 'package:gridview_test/state/state_provider.dart';
import 'package:provider/provider.dart';

import 'gridview/home_page.dart';
import 'gridview/utility/themeProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ChangeNotifierProvider(create: (context) => MyAppState()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, index) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: themeProvider.themeMode,
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                useMaterial3: true,
                colorScheme: themeProvider.darkScheme),
            theme: ThemeData(
              colorScheme: themeProvider.lightScheme,
              useMaterial3: true,
            ),
            home: const MyHomePage(
              title: "Flutter App",
            ),
          );
        },
      ),
    );
  }
}
