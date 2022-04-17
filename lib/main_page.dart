import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spotify_clone/components/icon_button_widget.dart';
import 'package:flutter_spotify_clone/screens/player_page.dart';

import 'const.dart';
import 'screens/home_page.dart';
import 'screens/profile_page.dart';
import 'screens/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

int _selectedIndex = 0;

class _MainPageState extends State<MainPage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // Positioned(
            //     top: -509,
            //     left: -500,
            //     child: Container(
            //       height: 1000,
            //       width: 1000,
            //       decoration: const BoxDecoration(
            //         gradient: RadialGradient(
            //             colors: [Color(0xff859AC0), Colors.transparent]),
            //       ),
            //     )),
            _pages.elementAt(_selectedIndex),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  // music-player-slab
                  Stack(
                    children: [
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const PlayerPage())));
                        },
                        child: Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width - 16,
                          decoration: const BoxDecoration(
                            color: Color(0xff3F72BF),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          padding: const EdgeInsets.all(9),
                          child: Row(
                            children: [
                              // img
                              Container(
                                width: 38,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://sterling-sound.com/wp-content/uploads/Lauv-I-Like-Me-Better-2017-billboard-embed.jpg'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              // title and creator
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  // title
                                  Text("I Like me Better",
                                      style: TextStyle(
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Raleway",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 13.0),
                                      textAlign: TextAlign.left),
                                  // creator
                                  Text("Lauv",
                                      style: TextStyle(
                                          color: Color(0xffbeb8b5),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Raleway",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 13.0),
                                      textAlign: TextAlign.left)
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              // connect devise
                              const IconButtonWidget(
                                  icon: 'connect-device.png'),
                              // like
                              const IconButtonWidget(icon: 'heart.png'),
                              // pause
                              const IconButtonWidget(icon: 'puse.png'),
                            ],
                          ),
                        ),
                      ),
                      // seekbar
                      Positioned(
                        bottom: 0,
                        left: 8,
                        child: Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width - 32,
                          decoration: const BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 8,
                        child: Container(
                          height: 2,
                          width: (MediaQuery.of(context).size.width - 32) * 0.2,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // bottem-nav-bar
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 0, 0, 0),
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(135, 0, 0, 0),
                          Color.fromARGB(80, 0, 0, 0),
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.0, 0.3, 0.6, 0.75, 1.0],
                      ),
                    ),
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Row(
                      children: [
                        BottomNavBarItem(
                          title: 'Home',
                          icon: 'home.png',
                          onTap: () {
                            _onItemTapped(0);
                          },
                          index: 0,
                        ),
                        BottomNavBarItem(
                          title: 'Searh',
                          icon: 'search.png',
                          onTap: () {
                            _onItemTapped(1);
                          },
                          index: 1,
                        ),
                        BottomNavBarItem(
                          title: 'Your Library',
                          icon: 'library.png',
                          onTap: () {
                            _onItemTapped(2);
                          },
                          index: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    Key? key,
    this.onTap,
    required this.icon,
    required this.title,
    required this.index,
  }) : super(key: key);
  final Function()? onTap;
  final String icon;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        enableFeedback: false,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: onTap,
        child: Column(
          children: [
            Image.asset(
              '$kAssetIconsWay/$icon',
              color: _selectedIndex != index
                  ? const Color(0xffababab)
                  : Colors.white,
            ),
            const SizedBox(
              height: 8,
            ),
            // title
            Text(title,
                style: TextStyle(
                    color: _selectedIndex != index
                        ? const Color(0xffababab)
                        : Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Raleway",
                    fontStyle: FontStyle.normal,
                    fontSize: 11.0)),
          ],
        ),
      ),
    );
  }
}

List<Widget> _pages = <Widget>[
  const HomePage(),
  const SearchPage(),
  const ProflePage(),
];
