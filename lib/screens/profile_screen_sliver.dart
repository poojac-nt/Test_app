import 'package:flutter/material.dart';

class SliverProfileScreen extends StatelessWidget {
  const SliverProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.cast),
        title: Text("Flutter TV"),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 16.0),
            child: CircleAvatar(
              child: Icon(Icons.account_circle),
            ),
          )
        ],
      ),
      body: CarouselExample(),
    );
  }
}

class CarouselExample extends StatefulWidget {
  const CarouselExample({super.key});

  @override
  State<CarouselExample> createState() => _CarouselExampleState();
}

class _CarouselExampleState extends State<CarouselExample> {
  final CarouselController controller = CarouselController(initialItem: 1);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        ConstrainedBox(
            constraints: BoxConstraints(maxHeight: height / 2),
            child: CarouselView(
              scrollDirection: Axis.vertical,
              controller: controller,
              children: List<Widget>.generate(10, (int index) {
                return Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.lightBlueAccent),
                    child: Center(child: Text("Item $index")));
              }),
              itemExtent: double.infinity,
            )),
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 180),
          child: CarouselView(
              itemExtent: 320,
              shrinkExtent: 200,
              children: List<Widget>.generate(5, (index) {
                return Container(
                  decoration: BoxDecoration(color: Colors.lightBlue),
                );
              })),
        )
      ],
    );
  }
}
