import 'package:bammy_mobil/widgets/homepage_collected_widget.dart';
import 'package:bammy_mobil/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        primary: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 48),
              HomePageWelcomeMessage(),
              SizedBox(height: 24),
              SearchButton(),
              SizedBox(height: 12),
              HomePageNotificationWidget(),
              SizedBox(height: 12),
              HomePageCollectedWidget(),
              SizedBox(height: 10),
            ],
          ),
        ),
    
    );
  }
}
