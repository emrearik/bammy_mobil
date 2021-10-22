import 'package:bammy_mobil/models/bamya_istatistik.dart';
import 'package:bammy_mobil/screens/collected_okra_statistic.dart';
import 'package:bammy_mobil/screens/screens.dart';
import 'package:bammy_mobil/view_model/okrastatistics_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageCollectedWidget extends StatelessWidget {
  final _viewModel = OkraStatisticsViewModel();

  HomePageCollectedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Toplanılan Bamyalar",
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(112, 112, 112, 1),
                ),
              ),
            ),
          ],
        ),
        Observer(builder: (_) {
          _viewModel.readData();
          return Container(
            height: MediaQuery.of(context).size.height / 4,
            child: _viewModel.okraStatisticsList.isNotEmpty
                ? ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _viewModel.okraStatisticsList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CollectedOkraStatisticPage(
                                      collectedOkraIndex: index,
                                    )),
                          );
                        },
                        child: collectedOkraWidgets(
                            _viewModel.okraStatisticsList[index].bamyaTuru
                                .toString(),
                            _viewModel.okraStatisticsList[index].bamyaResim
                                .toString()),
                      );
                    })
                : Text("Yazi gelmedi"),
          );
        }),
        SizedBox(height: 20),
      ],
    );
  }

  Widget collectedOkraWidgets(String bamyaCesidi, String img) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Container(
        height: 160,
        width: 131,
        child: Stack(
          children: [
            Positioned(
              top: 37,
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: 113,
                  height: 115,
                ),
              ),
            ),
            Positioned(
              top: 120,
              left: 95,
              child: Material(
                borderRadius: BorderRadius.circular(32),
                color: Colors.white,
                elevation: 5,
                child: Center(
                  child: Container(
                    width: 32,
                    height: 32,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: Color.fromRGBO(112, 112, 112, 1),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30,
              child: Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.scaleDown,
                    image: AssetImage(img),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 100,
              child: Text(
                bamyaCesidi,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(112, 112, 112, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
