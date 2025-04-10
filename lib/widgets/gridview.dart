import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gridview_test/state/state_provider.dart';
import 'package:provider/provider.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyAppState>(builder: (context, appState, index) {
      return MasonryGridView.builder(
          gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: appState.favs.length,
          mainAxisSpacing: 8,
          // physics: AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(6),
          crossAxisSpacing: 8,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network("${appState.favs[index]}"));
          });
    });
    ;
  }
}
