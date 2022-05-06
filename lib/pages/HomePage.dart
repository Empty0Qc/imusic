import 'package:flutter/material.dart';
import 'package:i_music/widgets/widget_server.dart';

import 'MusicPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> bottomPages = [MusicPage(), Text('explore'), Text('mine')];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Center(child: bottomPages[_currentIndex]),
        bottomNavigationBar: NavigationBar(
          selectedIndex: _currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: WidgetService.getHomeBottomWidgetList(),
        ),
      ),
    );
  }
}

