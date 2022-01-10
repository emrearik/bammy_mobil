import 'package:bammy_mobil/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:google_fonts/google_fonts.dart';

class DetailsPageCustomShapeVersion1Widget extends StatefulWidget {
  final String? okraType;
  final String? imgPath;

  const DetailsPageCustomShapeVersion1Widget(
      {required this.okraType, required this.imgPath})
      : super();
  @override
  State<DetailsPageCustomShapeVersion1Widget> createState() =>
      _DetailsPageCustomShapeVersion1WidgetState();
}

class _DetailsPageCustomShapeVersion1WidgetState
    extends State<DetailsPageCustomShapeVersion1Widget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          elevation: 1,
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 367,
            height: 151,
          ),
        ),
        CustomShapeVersion1Widget(),
        Positioned(
          left: MediaQuery.of(context).size.width / 2.3,
          top: 20,
          child: Container(
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(widget.imgPath!, fit: BoxFit.fill),
          ),
        ),
        Positioned(
          top: 50,
          left: 42,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.okraType!,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(112, 112, 112, 1),
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

class DetailsPageCustomShapeVersion2Widget extends StatefulWidget {
  final String? okraType;
  final String? imgPath;

  const DetailsPageCustomShapeVersion2Widget(
      {required this.okraType, required this.imgPath})
      : super();
  @override
  State<DetailsPageCustomShapeVersion2Widget> createState() =>
      _DetailsPageCustomShapeVersion2WidgetState();
}

class _DetailsPageCustomShapeVersion2WidgetState
    extends State<DetailsPageCustomShapeVersion2Widget> {
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
        CustomShapeVersion2Widget(),
        Positioned(
          left: MediaQuery.of(context).size.width / 9,
          top: MediaQuery.of(context).size.height / 50,
          child: Container(
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(widget.imgPath!, fit: BoxFit.fill),
          ),
        ),
        Positioned(
          top: 50,
          left: MediaQuery.of(context).size.width / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.okraType!,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(112, 112, 112, 1),
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
