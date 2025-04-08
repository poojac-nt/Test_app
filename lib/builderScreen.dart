import 'package:flutter/material.dart';
import 'package:gridview_test/main.dart';
import 'package:gridview_test/screens/favorite_screen.dart';
import 'package:gridview_test/screens/home_screen.dart';
import 'package:gridview_test/screens/profile_screen.dart';
import 'package:gridview_test/state/state_provider.dart';
import 'package:provider/provider.dart';

class GridviewScreen extends StatefulWidget {
  const GridviewScreen({super.key});

  @override
  State<GridviewScreen> createState() => _GridviewScreenState();
}

class _GridviewScreenState extends State<GridviewScreen> {
  @override
  Widget build(BuildContext context) {
    final appState = context.watch<MyAppState>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new_rounded),
          title: Text("Radha"),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Icon(
                Icons.more_horiz,
              ),
            )
          ],
        ),
        body: appState.pages[appState.currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  size: 28,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border,
                  size: 23,
                ),
                label: "Like"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 27,
                ),
                label: "User"),
          ],
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Theme.of(context).colorScheme.secondary,
          showSelectedLabels: true,
          currentIndex: appState.currentIndex,
          onTap: (value) {
            setState(() {
              appState.currentIndex = value;
            });
          },
        ),
      ),
    );
  }
}
