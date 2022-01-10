import 'package:bammy_mobil/view_model/okrastatistics_view_model.dart';
import 'package:bammy_mobil/widgets/statistics_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticsPage extends StatelessWidget {
  final _viewModel = OkraStatisticsViewModel();
  StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "İstatistikler",
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
            Observer(builder: (_) {
              _viewModel.readData();
              return Container(
                  height: MediaQuery.of(context).size.height,
                  child: _viewModel.okraStatisticsList.isNotEmpty
                      ? ListView.builder(
                          physics: PageScrollPhysics(),
                          itemCount: _viewModel.okraStatisticsList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: StatisticsPageWidget(
                                okraType: _viewModel
                                    .okraStatisticsList[index].okraType,
                                collectedDate: _viewModel
                                    .okraStatisticsList[index].collectedDate,
                                collectedTime: _viewModel
                                    .okraStatisticsList[index].collectedTime,
                                collectedAmount: _viewModel
                                    .okraStatisticsList[index].collectedAmount,
                                nextCollectedDate: _viewModel
                                    .okraStatisticsList[index]
                                    .nextCollectedDate,
                              ),
                            );
                          },
                        )
                      : Text("İstatistikler yüklenemedi."));
            }),
          ],
        ),
      ),
    );
  }
}
