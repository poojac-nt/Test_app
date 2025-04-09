import 'package:flutter/material.dart';
import 'package:gridview_test/widgets/gridview.dart';

import '../widgets/custom_column.dart';

class SliverProfileScreen extends StatelessWidget {
  const SliverProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverMainAxisGroup(slivers: [decoratedSliverList()]),
        ],
      ),
    );
  }

  Widget decoratedSliverList() {
    return DecoratedSliver(
        position: DecorationPosition.background,
        sliver: SliverList.separated(
            itemBuilder: (_, index) {
              return Container(
                child: Center(child: Text("Item $index")),
              );
            },
            separatorBuilder: (_, __) => Divider()),
        decoration: BoxDecoration(color: Colors.blueAccent));
  }
}
