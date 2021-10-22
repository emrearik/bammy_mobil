import 'package:bammy_mobil/widgets/custom_shape_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageNotificationWidget extends StatelessWidget {
  const HomePageNotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          elevation: 1,
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: MediaQuery.of(context).size.width / 0.294,
            height: MediaQuery.of(context).size.height / 4.5,
          ),
        ),
        CustomShapeVersion1Widget(),
        Positioned(
          left: MediaQuery.of(context).size.width / 2,
          top: 10,
          child: Container(
            width: MediaQuery.of(context).size.width / 3,
            height: MediaQuery.of(context).size.height / 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset("assets/bamya_resim/cicek_bamyasi_2.png",
                fit: BoxFit.fill),
          ),
        ),
        Positioned(
          top: 30,
          left: MediaQuery.of(context).size.width / 18,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Amasya(Çiçek) Bamyası'nı \ntoplamayı unutmayın !",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(112, 112, 112, 1),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Image.asset(
                    "assets/images/su_bidon.png",
                    width: 24,
                    height: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "08:00",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(112, 112, 112, 1),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Çiçek bamyası hızlı olgunlaşan bir\nbamya türüdür. Lütfen toplamayı \nunutmayın !",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w400,
                    color: Color.fromRGBO(112, 112, 112, 1),
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
