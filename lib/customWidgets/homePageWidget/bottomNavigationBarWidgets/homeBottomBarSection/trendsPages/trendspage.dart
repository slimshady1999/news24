import "package:flutter/material.dart";
import 'package:news24/customWidgets/homePageWidget/bottomNavigationBarWidgets/trendsBottomBarSection/trendsPageWidgets/businesstrendSection.dart';
import '../../trendsBottomBarSection/cryptoTrendsWidget/cryptoHeadingSection.dart';
import '../../trendsBottomBarSection/cryptoTrendsWidget/cryptoTrendSection.dart';
import '../../trendsBottomBarSection/trendsPageWidgets/topSection.dart';

// ignore: must_be_immutable
class TrendsPage extends StatelessWidget {
  const TrendsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        // color: Colors.yellow,
        SingleChildScrollView(
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        TopHomeSection(),
        BusinessTrendsSection(),
        CryptoHeadingSection(),
        CryptoTrendSection(),
        // AppleTrendSection(),
      ]),
    );
  }
}
