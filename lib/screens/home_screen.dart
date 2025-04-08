import 'package:flutter/material.dart';
import 'package:gridview_test/main.dart';
import 'package:gridview_test/state/state_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<MyAppState>(builder: (context, appState, child) {
        return GridView.builder(
            itemCount: 15,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (context, index) {
              final url = appState.imageUrls[index];
              return Stack(children: [
                GestureDetector(
                  onTap: () => showDialogBox(context, "${url}"),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage("$url"))),
                  ),
                ),
                Positioned(
                    right: 0,
                    child: IconButton(
                      onPressed: () {
                        appState.toggleFavorite("$url");
                        print(appState.favs);
                      },
                      icon: Icon(
                        appState.favs.contains(url)
                            ? Icons.favorite
                            : Icons.favorite_outline,
                      ),
                      color: Colors.white,
                    ))
              ]);
            });
      }),
    );
  }

  Future showDialogBox(BuildContext context, String str) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Image.network(
              str,
              fit: BoxFit.fill,
              color: Colors.blue,
              colorBlendMode: BlendMode.modulate,
              filterQuality: FilterQuality.high,
            ),
          );
        });
  }
}
