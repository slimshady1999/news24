import 'package:flutter/material.dart';
import 'package:news24/views/businesspages/globalBusinessPage/globalBusinessNews.dart';

import '../../../../views/bitcoinpages/bitcoinpage.dart';
import '../../../../views/businesspages/businessPage/businesspage.dart';
import '../../../../views/techpages/techCrunchPages/techcrunch.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Padding(
        padding: EdgeInsets.only(top: 13.0, left: 20),
        child: Text("Categories!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 19, 103, 247),
            )),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 7.0, left: 20),
        child: Text("Quickly Find your News Interest!",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black87)),
      ),
      const SizedBox(height: 35),
      Container(
          height: MediaQuery.of(context).size.height / 2.0,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(133, 191, 191, 191),
          child: GridView.count(
              physics: const BouncingScrollPhysics(),
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
              crossAxisCount: 3,
              padding: const EdgeInsets.all(10),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CryptoTrendSection()));
                  },
                  child: Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Image.asset("images/digital-finance.png",
                            height: 75,
                            width: 90,
                            colorBlendMode: BlendMode.colorDodge),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Crypto",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const BusinessTrendsSection()));
                  },
                  child: Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Image.asset("images/analysis.png",
                            height: 75,
                            width: 90,
                            colorBlendMode: BlendMode.colorDodge),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Business",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const GlobalBusiness()));
                  },
                  child: Container(
                    height: 100,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Image.asset("images/chat.png",
                            height: 75,
                            width: 90,
                            colorBlendMode: BlendMode.colorDodge),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Global News",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TechCrunchNews()));
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Image.asset("images/communication.png",
                            height: 75,
                            width: 90,
                            colorBlendMode: BlendMode.colorDodge),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Tech Crunch",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]))
    ]);
  }
}
