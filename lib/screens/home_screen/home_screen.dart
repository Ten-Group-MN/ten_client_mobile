import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:tenmanga/screens/books_screen/books_screen.dart';
import 'package:tenmanga/screens/information_screen/information_screen.dart';
import 'package:tenmanga/screens/others_screen/others_screen.dart';
import 'package:tenmanga/screens/schedule_screen/schedule_screen.dart';
import 'package:tenmanga/screens/start_screen/start_screen.dart';

import '../../constants.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/homeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 2;

  static const List<String> _navbarItemNames = [
    "Хуваарь",
    "Бүх ном",
    "Эхлэл",
    "Мэдэгдэл",
    "Бусад"
  ];
  static const List<dynamic> _navbarItemIcons = [
    schedule,
    allBooks,
    homeIcon,
    notification,
    others
  ];
  static const List<Widget> navBarBodies = [
    ScheduleScreen(),
    BooksScreen(),
    StartsScreen(),
    InformationScreen(),
    OthersScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          elevation: 0.3,
          centerTitle: false,
          title: Text(
            _navbarItemNames[_selectedIndex],
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: [
            GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(right: 23.0),
                  child: SizedBox(
                    height: 24.0,
                    width: 24.0,
                    child: SvgPicture.asset(
                      searchImage,
                      color: const Color.fromRGBO(252, 76, 78, 1),
                    ),
                  ),
                )),
          ],
        ),
        bottomNavigationBar: Container(
          height: 92.0,
          padding: const EdgeInsets.only(top: 4.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(17.0),
              topRight: Radius.circular(17.0),
            ),
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                spreadRadius: 1.0,
                blurRadius: 1.0,
              )
            ],
          ),
          child: BottomNavigationBar(
              selectedItemColor: const Color.fromRGBO(252, 76, 78, 1),
              type: BottomNavigationBarType.fixed,
              unselectedLabelStyle: navLabelStyle,
              selectedLabelStyle: navLabelStyle,
              currentIndex: _selectedIndex,
              unselectedFontSize: 10.0,
              selectedFontSize: 10.0,
              onTap: _onItemTapped,
              elevation: 0.0,
              items: _navbarItemNames
                  .asMap()
                  .map(
                    (index, value) => MapEntry(
                      index,
                      BottomNavigationBarItem(
                          tooltip: "",
                          icon: index == 2
                              ? Container(
                                  height: 60.0,
                                  width: 60.0,
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          196, 196, 196, 1),
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        _navbarItemIcons[index],
                                        color: Colors.white,
                                      ),
                                      Text(
                                        _navbarItemNames[index],
                                        style: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Nunito',
                                            fontStyle: FontStyle.normal,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                )
                              : SvgPicture.asset(
                                  _navbarItemIcons[index],
                                  color: index == 2
                                      ? Colors.white
                                      : const Color.fromRGBO(173, 173, 173, 1),
                                ),
                          activeIcon: index == 2
                              ? Container(
                                  height: 60.0,
                                  width: 60.0,
                                  padding: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromRGBO(252, 76, 78, 1),
                                      borderRadius:
                                          BorderRadius.circular(15.0)),
                                  child: Column(
                                    children: [
                                      SvgPicture.asset(
                                        _navbarItemIcons[index],
                                        color: Colors.white,
                                      ),
                                      Text(
                                        _navbarItemNames[index],
                                        style: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Nunito',
                                            fontStyle: FontStyle.normal,
                                            color: Colors.white),
                                      )
                                    ],
                                  ),
                                )
                              : SvgPicture.asset(
                                  _navbarItemIcons[index],
                                  color: index == 2
                                      ? Colors.white
                                      : const Color.fromRGBO(252, 76, 78, 1),
                                ),
                          label: index == 2 ? "" : value),
                    ),
                  )
                  .values
                  .toList()),
        ),
        body: navBarBodies.elementAt(_selectedIndex));
  }
}
