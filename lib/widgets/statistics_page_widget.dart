import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticsPageWidget extends StatefulWidget {
  String? okraType;
  String? collectedDate;
  String? collectedTime;
  String? collectedAmount;
  String? nextCollectedDate;

  StatisticsPageWidget(
      {required this.okraType,
      required this.collectedDate,
      required this.collectedTime,
      required this.collectedAmount,
      required this.nextCollectedDate})
      : super();

  @override
  State<StatisticsPageWidget> createState() => _StatisticsPageWidgetState();
}

class _StatisticsPageWidgetState extends State<StatisticsPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 3.8,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              rowIcerik("Bamya Türü:", widget.okraType!),
              SizedBox(height: 5),
              rowIcerik("Toplama Tarihi:", widget.collectedDate!),
              SizedBox(height: 5),
              rowIcerik("Toplama Süresi:", widget.collectedTime!),
              SizedBox(height: 5),
              rowIcerik("Toplama Miktarı:", widget.collectedAmount!),
              SizedBox(height: 5),
              rowIcerik("Sonraki Toplama Tarihi:\n(Tahmini)",
                  widget.nextCollectedDate!),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}

Widget rowIcerik(String tanim, String icerik) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        tanim,
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: Color.fromRGBO(112, 112, 112, 1),
          ),
        ),
      ),
      SizedBox(width: 10),
      Text(
        icerik,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(112, 112, 112, 1),
          ),
        ),
      ),
    ],
  );
}
