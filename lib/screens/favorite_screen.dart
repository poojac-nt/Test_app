import 'package:flutter/material.dart';
import 'package:gridview_test/state/state_provider.dart';
import 'package:gridview_test/widgets/gridview.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer(
        builder: (BuildContext context, MyAppState appState, Widget? child) {
      if (appState.favs.isEmpty) {
        return const Center(
          child: Text("No Favorites yet"),
        );
      } else {
        return const CustomGridView();
      }
    }));
  }
}
