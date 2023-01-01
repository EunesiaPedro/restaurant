import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/features/categories.dart';
import 'package:restaurant/features/profile.dart';
import 'package:restaurant/features/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" restaurant App"),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const FaIcon(FontAwesomeIcons.ellipsis)
          )
        ],
      ),
      body: IndexedStack(
        children: [
          CategoriesPage(),
          SettingsPage(),
          ProfilePage()

        ],
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() => _currentIndex = index);
        },
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: " Home"
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.person),
              label: "Profile"
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.share),
              label: " settings"
          )
        ],
      ),
    );

  }
}
