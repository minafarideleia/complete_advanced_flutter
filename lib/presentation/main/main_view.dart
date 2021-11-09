import 'package:complete_advanced_flutter/presentation/main/home_page.dart';
import 'package:complete_advanced_flutter/presentation/main/notifications_page.dart';
import 'package:complete_advanced_flutter/presentation/main/search_page.dart';
import 'package:complete_advanced_flutter/presentation/main/settings_page.dart';
import 'package:complete_advanced_flutter/presentation/resources/color_manager.dart';
import 'package:complete_advanced_flutter/presentation/resources/strings_manager.dart';
import 'package:complete_advanced_flutter/presentation/resources/values_manager.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Widget> pages = [
    HomePage(),
    SearchPage(),
    NotificationsPage(),
    SettingsPage()
  ];
  List<String> titles = [
    AppStrings.home,
    AppStrings.search,
    AppStrings.notifications,
    AppStrings.settings,
  ];
  var _title = AppStrings.home;
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _title,
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: ColorManager.lightGrey, spreadRadius: AppSize.s1)
        ]),
        child: BottomNavigationBar(
          selectedItemColor: ColorManager.primary,
          unselectedItemColor: ColorManager.grey,
          currentIndex: _currentIndex,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: AppStrings.home),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: AppStrings.search),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: AppStrings.notifications),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: AppStrings.settings),
          ],
        ),
      ),
    );
  }

  onTap(int index) {
    setState(() {
      _currentIndex = index;
      _title = titles[index];
    });
  }
}
