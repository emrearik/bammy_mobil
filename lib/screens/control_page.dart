import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ControlPage extends StatelessWidget {
  const ControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(48, 24, 48, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Kontrol Merkezi",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(112, 112, 112, 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            /*
            Text(
              "Kamera Görüntüsü",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(112, 112, 112, 1),
                ),
              ),
            ),
            SizedBox(height: 5),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: MediaQuery.of(context).size.width / 0.294,
                height: MediaQuery.of(context).size.height / 3.5,
              ),
            ),*/
            SizedBox(height: 10),
            Text(
              "Tekerlek ve Gövde Kontrolü",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(112, 112, 112, 1),
                ),
              ),
            ),
            SizedBox(height: 5),
            tekerlekVeGovdeKontrolu(),
            SizedBox(height: 10),
            Text(
              "Kol Kontrolü",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(112, 112, 112, 1),
                ),
              ),
            ),
            kolKontrolu(),
          ],
        ),
      ),
    );
  }
}

Widget tekerlekVeGovdeKontrolu() {
  return Column(
    children: [
      Center(
        //yukarı button
        child: GestureDetector(
          onTap: () {
            print("tekerlek govde kontrolu yukari tiklandi");
          },
          child: controlBox(
            Icon(Icons.keyboard_arrow_up),
          ),
        ),
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //sol button
          GestureDetector(
            onTap: () {
              print("tekerlek govde kontrolu sol tiklandi");
            },
            child: controlBox(
              Icon(Icons.keyboard_arrow_left),
            ),
          ),
          //sag button
          GestureDetector(
            onTap: () {
              print("tekerlek govde kontrolu sag tiklandi");
            },
            child: controlBox(
              Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ],
      ),
      SizedBox(height: 10),
      Center(
        //asagı button
        child: GestureDetector(
          onTap: () {
            print("tekerlek govde kontrolu asagi tiklandi");
          },
          child: controlBox(
            Icon(Icons.keyboard_arrow_down),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //govde kaldir button
          GestureDetector(
              onTap: () {
                print("tekerlek govde kontrolu govdeyi yukari kaldir tiklandi");
              },
              child: textButton("Gövdeyi\nYukarı Kaldır", 110)),
          //govde indir button
          GestureDetector(
              onTap: () {
                print("tekerlek govde kontrolu govdeyi asagi indir tiklandi");
              },
              child: textButton("Gövdeyi\nAşağı İndir", 110)),
        ],
      )
    ],
  );
}

Widget kolKontrolu() {
  return Column(
    children: [
      Center(
        //yukarı button
        child: GestureDetector(
          onTap: () {
            print("kol kontrolu yukari tiklandi");
          },
          child: controlBox(
            Icon(Icons.keyboard_arrow_up),
          ),
        ),
      ),
      SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //sol button
          GestureDetector(
            onTap: () {
              print("kol kontrolu sol tiklandi");
            },
            child: controlBox(
              Icon(Icons.keyboard_arrow_left),
            ),
          ),
          //kes button
          GestureDetector(
            onTap: () {
              print("kol kontrolu KES tiklandi");
            },
            child: textButton("KES", 70),
          ),
          //sag button
          GestureDetector(
            onTap: () {
              print("kol kontrolu sag tiklandi");
            },
            child: controlBox(
              Icon(Icons.keyboard_arrow_right),
            ),
          ),
        ],
      ),
      SizedBox(height: 30),
      Center(
        //asagı button
        child: GestureDetector(
          onTap: () {
            print("kol kontrolu asagi tiklandi");
          },
          child: controlBox(
            Icon(Icons.keyboard_arrow_down),
          ),
        ),
      ),
    ],
  );
}

Widget controlBox(Icon icon) {
  return Container(
    width: 45,
    height: 45,
    decoration: BoxDecoration(
      color: Color.fromRGBO(210, 236, 222, 1),
      borderRadius: BorderRadius.circular(5),
    ),
    child: icon,
  );
}

Widget textButton(String text, double width) {
  return Container(
    width: width,
    height: 45,
    decoration: BoxDecoration(
      color: Color.fromRGBO(210, 236, 222, 1),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Center(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
            fontSize: 9,
            fontWeight: FontWeight.w400,
            color: Color.fromRGBO(112, 112, 112, 1),
          ),
        ),
      ),
    ),
  );
}
