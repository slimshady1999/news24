import "package:flutter/material.dart";
import 'package:news24/views/bitcoinpages/bitcoindetailspage.dart';

import '../../../../../model/cryptoModelClass.dart';
import '../../../../../services/apiServices.dart';

class CryptoTrendSectionWidget extends StatefulWidget {
  const CryptoTrendSectionWidget({Key? key}) : super(key: key);

  @override
  State<CryptoTrendSectionWidget> createState() =>
      _CryptoTrendSectionWidgetState();
}

class _CryptoTrendSectionWidgetState extends State<CryptoTrendSectionWidget> {
  List<CryptoCurrencies>? articles;

  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    articles = await CryptoCurrencyApiServices().getCryptoData();
    if (articles != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        // color: Colors.red,
        child: Visibility(
          visible: isLoaded,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return articles?[index].urlToImage != null &&
                        articles?[index].author != null
                    ? GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => CryptoDetailsPage(
                                    articles: articles![index]))),
                        child: Card(
                          elevation: 17,
                          child: ListTile(
                            horizontalTitleGap: 2,
                            leading: CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  "${articles![index].urlToImage}"),
                            ),
                            title: Text(
                              "${articles![index].title}",
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800),
                            ),
                            subtitle: Text(
                              "${articles![index].publishedAt}",
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      )
                    : Card(
                        elevation: 16,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          enabled: true,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CryptoDetailsPage(
                                    articles: articles![index])));
                          },
                          horizontalTitleGap: 2,
                          leading: const CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1614028674026-a65e31bfd27c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
                          ),
                          title: Text(
                            "${articles?[index].title}",
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                fontWeight: FontWeight.w800),
                          ),
                          subtitle: Text(
                            "${articles?[index].publishedAt}",
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      );
              },
              itemCount: articles?.length),
          replacement: Center(
              child: Image.asset("images/loading.png", height: 50, width: 50)),
        ));
  }
}
