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
            wheelAndBodyControl(),
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
            armControl(),
          ],
        ),
      ),
    );
  }
}

Widget wheelAndBodyControl() {
  return Column(
    children: [
      Center(
        //yukarı button
        child: GestureDetector(
          onTap: () {
            print("Wheel and Body Control - Click UP");
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
              print("Wheel and Body Control - Click LEFT");
            },
            child: controlBox(
              Icon(Icons.keyboard_arrow_left),
            ),
          ),
          //sag button
          GestureDetector(
            onTap: () {
              print("Wheel and Body Control - Click RIGHT");
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
            print("Wheel and Body Control - Click DOWN");
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
                print("Wheel and Body Control - Click LIFT UP");
              },
              child: textButton("Gövdeyi\nYukarı Kaldır", 110)),
          //govde indir button
          GestureDetector(
              onTap: () {
                print("Wheel and Body Control - Click LIFT DOWN");
              },
              child: textButton("Gövdeyi\nAşağı İndir", 110)),
        ],
      )
    ],
  );
}

Widget armControl() {
  return Column(
    children: [
      Center(
        //yukarı button
        child: GestureDetector(
          onTap: () {
            print("Arm Control - Click UP");
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
              print("Arm Control - Click LEFT");
            },
            child: controlBox(
              Icon(Icons.keyboard_arrow_left),
            ),
          ),
          //kes button
          GestureDetector(
            onTap: () {
              print("Arm Control - Click CUT");
            },
            child: textButton("KES", 70),
          ),
          //sag button
          GestureDetector(
            onTap: () {
              print("Arm Control - Click RIGHT");
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
            print("Arm Control - Click DOWN");
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
