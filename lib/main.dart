import 'package:bammy_mobil/assets/custom_icons_icons.dart';
import 'package:bammy_mobil/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedItem = 0;
  var _pages = [
    HomePage(),
    DetailsListPage(),
    ControlPage(),
    StatisticsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      appBar: AppBar(
        actions: [
          Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          SizedBox(width: 20),
        ],
        title: SvgPicture.asset("assets/images/logo.svg"),
        elevation: 0,
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
      ),
      body: _pages[_selectedItem],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.fromLTRB(8, 0, 8, 2),
        child: Material(
          elevation: 3,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 54,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BottomNavigationBar(
                selectedItemColor: Color.fromRGBO(61, 182, 116, 1),
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                      size: 24,
                    ),
                    label: "Anasayfa",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      CustomIcons.okra,
                      size: 24,
                    ),
                    label: "Detay",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      CustomIcons.kontrol,
                      size: 24,
                    ),
                    label: "Kontrol",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      CustomIcons.istatistik,
                      size: 24,
                    ),
                    label: "İstatistik",
                  ),
                ],
                currentIndex: _selectedItem,
                onTap: (index) {
                  setState(() {
                    _selectedItem = index;
                  });
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
