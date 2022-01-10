import 'package:bammy_mobil/view_model/okradetail_view_model.dart';
import 'package:bammy_mobil/view_model/okrastatistics_view_model.dart';
import 'package:bammy_mobil/widgets/statistics_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CollectedOkraStatisticPage extends StatelessWidget {
  final _viewModel = OkraStatisticsViewModel();
  final int collectedOkraIndex;
  CollectedOkraStatisticPage({
    Key? key,
    required this.collectedOkraIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          SizedBox(width: 20),
        ],
        title: SvgPicture.asset("assets/images/logo.svg"),
        elevation: 0,
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(48, 24, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Observer(builder: (_) {
                _viewModel.readData();
                return Container(
                    height: MediaQuery.of(context).size.height,
                    child: _viewModel.okraStatisticsList.isNotEmpty
                        ? ListView.builder(
                            physics: PageScrollPhysics(),
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: StatisticsPageWidget(
                                  okraType: _viewModel
                                      .okraStatisticsList[collectedOkraIndex]
                                      .okraType,
                                  collectedDate: _viewModel
                                      .okraStatisticsList[collectedOkraIndex]
                                      .collectedDate,
                                  collectedTime: _viewModel
                                      .okraStatisticsList[collectedOkraIndex]
                                      .collectedTime,
                                  collectedAmount: _viewModel
                                      .okraStatisticsList[collectedOkraIndex]
                                      .collectedAmount,
                                  nextCollectedDate: _viewModel
                                      .okraStatisticsList[collectedOkraIndex]
                                      .nextCollectedDate,
                                ),
                              );
                            },
                          )
                        : Text("İstatistik yüklenemedi."));
              }),
            ],
          ),
        ),
      ),
    );
  }
}
