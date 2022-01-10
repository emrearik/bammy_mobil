import 'package:bammy_mobil/screens/details_page.dart';
import 'package:bammy_mobil/view_model/okradetail_view_model.dart';
import 'package:bammy_mobil/widgets/details_page_widget.dart';
import 'package:bammy_mobil/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsListPage extends StatelessWidget {
  final _viewModel = OkraDetailViewModel();
  DetailsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Bamya Türleri",
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
            Observer(
              builder: (_) {
                _viewModel.getDataSource();
                return Container(
                  child: _viewModel.isServiceRequestLoading
                      ? SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.separated(
                                physics: PageScrollPhysics(),
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: 10),
                                itemCount: _viewModel.okraDetailsList.length,
                                itemBuilder: (context, index) {
                                  return index % 2 == 0
                                      ? GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailsPage(
                                                  okraType: _viewModel
                                                      .okraDetailsList[index]
                                                      .okraType!,
                                                  okraDetail: _viewModel
                                                      .okraDetailsList[index]
                                                      .okraDetail!,
                                                  okraImage: _viewModel
                                                      .okraDetailsList[index]
                                                      .okraImage!,
                                                ),
                                              ),
                                            );
                                          },
                                          child:
                                              DetailsPageCustomShapeVersion1Widget(
                                                  okraType: _viewModel
                                                      .okraDetailsList[index]
                                                      .okraType,
                                                  imgPath: _viewModel
                                                      .okraDetailsList[index]
                                                      .okraImage),
                                        )
                                      : GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    DetailsPage(
                                                  okraType: _viewModel
                                                      .okraDetailsList[index]
                                                      .okraType!,
                                                  okraDetail: _viewModel
                                                      .okraDetailsList[index]
                                                      .okraDetail!,
                                                  okraImage: _viewModel
                                                      .okraDetailsList[index]
                                                      .okraImage!,
                                                ),
                                              ),
                                            );
                                          },
                                          child:
                                              DetailsPageCustomShapeVersion2Widget(
                                                  okraType: _viewModel
                                                      .okraDetailsList[index]
                                                      .okraType,
                                                  imgPath: _viewModel
                                                      .okraDetailsList[index]
                                                      .okraImage),
                                        );
                                }),
                          ),
                        )
                      : Center(
                          child: Text("Veriye ulaşılamadı."),
                        ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
