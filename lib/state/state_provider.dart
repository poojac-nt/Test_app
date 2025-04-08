import 'package:flutter/material.dart';
import 'package:gridview_test/screens/favorite_screen.dart';
import 'package:gridview_test/screens/home_screen.dart';
import 'package:gridview_test/screens/profile_screen.dart';
import 'package:provider/provider.dart';

class MyAppState extends ChangeNotifier {
  List<String?> imageUrls = [
    "https://cdn.pixabay.com/photo/2016/10/26/19/00/domain-names-1772243_640.jpg",
    "https://cdn.pixabay.com/photo/2015/09/30/01/48/turkey-964831_640.jpg",
    "https://cdn.pixabay.com/photo/2013/02/01/18/14/url-77169_640.jpg",
    "https://cdn.pixabay.com/photo/2016/03/08/20/03/flag-1244648_640.jpg",
    "https://cdn.pixabay.com/photo/2013/03/01/18/40/crispus-87928_640.jpg",
    "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg",
    "https://cdn.pixabay.com/photo/2021/09/13/08/16/purple-flower-6620617_640.jpg",
    "https://cdn.pixabay.com/photo/2021/11/21/20/10/bach-6815187_640.jpg",
    "https://cdn.pixabay.com/photo/2021/09/13/08/18/blue-flower-6620619_640.jpg",
    "https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072821_640.jpg",
    "https://cdn.pixabay.com/photo/2023/02/01/10/37/sunset-7760143_640.jpg",
    "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_640.jpg",
    "https://cdn.pixabay.com/photo/2023/04/27/19/03/flower-meadow-7955256_640.jpg",
    "https://cdn.pixabay.com/photo/2023/03/17/13/45/terraces-7858669_640.jpg",
    "https://cdn.pixabay.com/photo/2023/10/29/13/21/waterfall-8350178_640.jpg"
  ];
  int currentIndex = 0;
  List<Widget> pages = const [HomeScreen(), FavoriteScreen(), ProfileScreen()];
  List<String> favs = [];
  void toggleFavorite(String url) {
    if (favs.contains(url)) {
      favs.remove(url);
    } else {
      favs.add(url);
    }
    notifyListeners();
  }
}
