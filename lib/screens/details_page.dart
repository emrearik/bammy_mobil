import 'package:bammy_mobil/view_model/okradetail_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  final String okraType;
  final String okraDetail;
  final String okraImage;

  DetailsPage(
      {Key? key,
      required this.okraType,
      required this.okraDetail,
      required this.okraImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(48, 24, 24, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                okraType,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(112, 112, 112, 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Material(
              elevation: 1,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  width: 323,
                  height: 193,
                  child: Image.asset(okraImage, fit: BoxFit.fill)),
            ),
            SizedBox(height: 10),
            Text(
              "Detaylar",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(112, 112, 112, 1),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              okraDetail,
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(112, 112, 112, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
