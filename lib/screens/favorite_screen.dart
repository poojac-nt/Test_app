import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gridview_test/state/state_provider.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer(
        builder: (BuildContext context, MyAppState appState, Widget? child) {
      if (appState.favs.isEmpty) {
        return Center(
          child: Text("No Favorites yet"),
        );
      } else {
        return MasonryGridView.builder(
            gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: appState.favs.length,
            mainAxisSpacing: 8,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 8,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Image.network("${appState.favs[index]}");
            });
      }
    }));
  }
}
