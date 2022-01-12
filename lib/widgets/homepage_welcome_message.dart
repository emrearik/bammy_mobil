import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomePageWelcomeMessage extends StatefulWidget {
  HomePageWelcomeMessage({Key? key}) : super(key: key);

  @override
  State<HomePageWelcomeMessage> createState() => _HomePageWelcomeMessageState();
}

class _HomePageWelcomeMessageState extends State<HomePageWelcomeMessage> {
  String? welcomeMessage;

  @override
  void initState() {
    welcomeMessageChange();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hoşgeldiniz,",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(112, 112, 112, 1),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  welcomeMessage!,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w300,
                      color: Color.fromRGBO(121, 121, 121, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/tarimlogo_anasayfa.png",
                  width: 32,
                  height: 30,
                ),
                SizedBox(width: 2),
                Text(
                  "Tarım için elverişli bir gün.",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(121, 121, 121, 1),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/images/havadurumu.png",
                    width: 26, height: 24),
                SizedBox(width: 2),
                Text(
                  DateFormat.Hm().format(DateTime.now()),
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(121, 121, 121, 1),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  void welcomeMessageChange() async {
    if (DateTime.now().hour >= 0 && DateTime.now().hour < 6) {
      welcomeMessage = "İyi Geceler";
    } else if (DateTime.now().hour >= 6 && DateTime.now().hour < 12) {
      welcomeMessage = "İyi Sabahlar";
    } else if (DateTime.now().hour >= 12 && DateTime.now().hour < 17) {
      welcomeMessage = "İyi Öğlenler";
    } else {
      welcomeMessage = "İyi Akşamlar";
    }
  }
}
