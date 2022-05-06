import 'package:flutter/material.dart';

class BottomNavigationDestinationWidget extends NavigationDestination {
  BottomNavigationDestinationWidget(
      {Key? key,
      required IconData selectIcon,
      required IconData iconData,
      required String label})
      : super(
            key: key,
            selectedIcon: Icon(selectIcon),
            icon: Icon(iconData),
            label: label);
}
