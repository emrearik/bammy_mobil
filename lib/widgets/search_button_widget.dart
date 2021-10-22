import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        width: MediaQuery.of(context).size.width / 0.294,
        height: 57,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Color.fromRGBO(112, 112, 112, 1),
              ),
              SizedBox(width: 20),
              Text(
                "Arama...",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Color.fromRGBO(112, 112, 112, 1),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
