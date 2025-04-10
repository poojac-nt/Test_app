import 'package:flutter/material.dart';
import 'package:gridview_test/screens/builderScreen.dart';
import 'package:gridview_test/state/state_provider.dart';
import 'package:gridview_test/utility/themeProvider.dart';
import 'package:provider/provider.dart';

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
            home: MyHomePage(
              title: "Flutter App",
            ),
          );
        },
      ),
    );
  }
}

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
              Padding(
                padding: const EdgeInsets.only(top: 188.0),
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
                  children: [
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
                      numbers: "call",
                      letter: "",
                    ),
                  ])
            ],
          ),
        ));
  }
}

class DialKeys extends StatelessWidget {
  const DialKeys({
    this.letter,
    required this.numbers,
    super.key,
  });
  final String numbers;
  final String? letter;
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeProvider>(context);
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Brightness.dark == true
              ? theme.darkScheme.primary
              : theme.lightScheme.primary,
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
