import 'package:flutter/material.dart';
import 'bitcoinpages/cryptoWidget.dart';
import 'businesspages/businessPage/businessWidgetPage.dart';
import 'businesspages/globalBusinessPage/globalBusinessNewsWidget.dart';
import 'techpages/techCrunchPages/techcrunchWidget.dart';

class NewsHomePage extends StatefulWidget {
  const NewsHomePage({Key? key}) : super(key: key);

  @override
  State<NewsHomePage> createState() => _NewsHomePageState();
}

class _NewsHomePageState extends State<NewsHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 13.0, left: 20),
            child: Text("Discover!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 19, 103, 247),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 7.0, left: 20),
            child: Text("Find out what's going on around the world!",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87)),
          ),
          const SizedBox(height: 19),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(0)),
            child: const TabBar(
                physics: BouncingScrollPhysics(),
                labelColor: Color.fromARGB(255, 19, 103, 247),
                unselectedLabelColor: Colors.grey,
                labelStyle:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                mouseCursor: SystemMouseCursors.grab,
                tabs: [
                  Tab(text: "Crypto"),
                  Tab(text: "Business"),
                  Tab(text: "Global.B"),
                  Tab(text: "TechCrunch"),
                ]),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.85,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(133, 191, 191, 191),
            child: const TabBarView(children: [
              CryptoTrendSectionWidget(),
              BusinessTrendsSectionWidget(),
              GlobalBusinessWidget(),
              TechCrunchNewsWidget()
            ]),
          ),
        ],
      ),
    );
  }
}
