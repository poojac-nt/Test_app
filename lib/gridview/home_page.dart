import 'package:flutter/material.dart';
import 'package:gridview_test/gridview/utility/themeProvider.dart';
import 'package:provider/provider.dart';
import 'dial_key_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 188.0),
                child: TextField(
                  decoration: InputDecoration(hintText: "Enter a number"),
                ),
              ),
              GridView.count(
                  padding: const EdgeInsets.only(left: 80, right: 80, top: 60),
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  crossAxisSpacing: 50,
                  mainAxisSpacing: 20,
                  children: const [
                    DialKeys(
                      numbers: "1",
                      letter: 'ABC',
                    ),
                    DialKeys(
                      numbers: "2",
                      letter: 'DEF',
                    ),
                    DialKeys(
                      numbers: "3",
                      letter: 'GHI',
                    ),
                    DialKeys(
                      numbers: "4",
                      letter: 'JKL',
                    ),
                    DialKeys(
                      numbers: "5",
                      letter: 'MNO',
                    ),
                    DialKeys(
                      numbers: "6",
                      letter: 'PQR',
                    ),
                    DialKeys(
                      numbers: "7",
                      letter: 'STR',
                    ),
                    DialKeys(
                      numbers: "8",
                      letter: 'UVW',
                    ),
                    DialKeys(
                      numbers: "9",
                      letter: 'XYZ',
                    ),
                    DialKeys(
                      numbers: "*",
                      letter: '',
                    ),
                    DialKeys(
                      numbers: "0",
                      letter: '+',
                    ),
                    DialKeys(
                      numbers: "#",
                      letter: '',
                    ),
                    DialKeys(
                      numbers: "",
                      letter: "",
                      isColor: false,
                    ),
                    DialKeys(
                      numbers: "call",
                      letter: "",
                    ),
                    DialKeys(
                      numbers: "",
                      letter: "",
                      isColor: false,
                    ),
                  ])
            ],
          ),
        ));
  }
}
