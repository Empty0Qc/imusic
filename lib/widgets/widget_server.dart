import 'package:flutter/material.dart';
import 'package:i_music/widgets/widgets/HomeBottomNavigationDestinationWidget.dart';

class WidgetService {
  /// 获取主页底部按钮list
  static getHomeBottomWidgetList() {
    return [
      BottomNavigationDestinationWidget(
          selectIcon: Icons.music_note,
          iconData: Icons.music_note_outlined,
          label: 'music'),
      BottomNavigationDestinationWidget(
          selectIcon: Icons.explore,
          iconData: Icons.explore_outlined,
          label: 'explore'),
      BottomNavigationDestinationWidget(
          selectIcon: Icons.person,
          iconData: Icons.person_outline,
          label: 'person_outline')
    ];
  }
}
