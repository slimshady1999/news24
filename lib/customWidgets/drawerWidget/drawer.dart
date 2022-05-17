import 'package:flutter/material.dart';

import '../../views/bitcoinpages/bitcoinpage.dart';
import '../../views/businesspages/businessPage/businesspage.dart';
import '../../views/businesspages/globalBusinessPage/globalBusinessNews.dart';
import '../../views/techpages/techCrunchPages/techcrunch.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 7.0),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 19, 103, 247),
                child: Row(children: [
                  Image.asset("images/bluelogo.png", height: 60, width: 70),
                  const Padding(
                    padding: EdgeInsets.only(left: 24.0),
                    child: Text(
                      "News247",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  )
                ]),
              ),
            ),
            const SizedBox(height: 50),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Crypto News Tile //

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CryptoTrendSection()));
              },
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width / 1.40,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 19, 103, 247),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(19),
                        bottomRight: Radius.circular(19))),
                child: Row(children: [
                  Image.asset("images/digital-finance.png",
                      height: 50,
                      width: 80,
                      colorBlendMode: BlendMode.colorDodge),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Crypto News",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 17.0),
                    child: Icon(Icons.ads_click, color: Colors.white),
                  ),
                ]),
              ),
            ),
            SizedBox(height: 10),

            // Business News Tile //

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BusinessTrendsSection()));
              },
              child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width / 1.40,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 19, 103, 247),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(19),
                          bottomRight: Radius.circular(19))),
                  child: Row(children: [
                    Image.asset("images/analysis.png",
                        height: 50,
                        width: 80,
                        colorBlendMode: BlendMode.colorDodge),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Business News",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 17.0),
                      child: Icon(Icons.ads_click, color: Colors.white),
                    ),
                  ])),
            ),
            const SizedBox(height: 10),

            // Global News Tile //

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const GlobalBusiness()));
              },
              child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width / 1.40,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 19, 103, 247),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(19),
                          bottomRight: Radius.circular(19))),
                  child: Row(children: [
                    Image.asset("images/chat.png",
                        height: 50,
                        width: 80,
                        colorBlendMode: BlendMode.colorDodge),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Global News",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 17.0),
                      child: Icon(Icons.ads_click, color: Colors.white),
                    ),
                  ])),
            ),
            SizedBox(height: 10),

            // TechCrunch News Tile //

            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TechCrunchNews()));
              },
              child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width / 1.40,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 19, 103, 247),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(19),
                          bottomRight: Radius.circular(19))),
                  child: Row(children: [
                    Image.asset("images/communication.png",
                        height: 50,
                        width: 80,
                        colorBlendMode: BlendMode.colorDodge),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "TechC News",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 17.0),
                      child: Icon(Icons.ads_click, color: Colors.white),
                    ),
                  ])),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
