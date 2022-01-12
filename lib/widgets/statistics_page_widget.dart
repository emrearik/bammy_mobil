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
        height: MediaQuery.of(context).size.height / 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              statisticInformation(),
            ],
          ),
        ),
      ),
    );
  }

  Widget statisticInformation() {
    List<Map<String, String>> statisticList = [
      {"title": "Bamya Türü:", "text": widget.okraType!},
      {"title": "Toplama Tarihi:", "text": widget.collectedDate!},
      {"title": "Toplama Süresi:", "text": widget.collectedTime!},
      {"title": "Toplama Miktarı:", "text": widget.collectedAmount!},
      {"title": "Sonraki Toplama Tarihi:", "text": widget.nextCollectedDate!}
    ];
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      child: ListView.builder(
          physics: PageScrollPhysics(),
          itemCount: statisticList.length,
          itemBuilder: (context, i) {
            return Padding(
              padding: const EdgeInsets.all(3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    statisticList[i]["title"]!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: Color.fromRGBO(112, 112, 112, 1),
                      ),
                    ),
                  ),
                  Text(
                    statisticList[i]["text"]!,
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(112, 112, 112, 1),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
