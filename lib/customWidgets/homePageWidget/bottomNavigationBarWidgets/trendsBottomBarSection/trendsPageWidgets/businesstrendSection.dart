// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';

import '../../../../../model/businessModelClass.dart';
import '../../../../../services/apiServices.dart';
import '../../../../../views/businesspages/businessPage/businessdetailspage.dart';

// ignore: non_constant_identifier_names
class BusinessTrendsSection extends StatefulWidget {
  const BusinessTrendsSection({Key? key}) : super(key: key);

  @override
  State<BusinessTrendsSection> createState() => _BusinessTrendsSectionState();
}

class _BusinessTrendsSectionState extends State<BusinessTrendsSection> {
  List<Business>? articles;

  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    articles = await BusinessApiService().getBusinessData();
    if (articles != null) {
      return setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 210,
        width: MediaQuery.of(context).size.width,
        // color: Colors.red,
        child: Visibility(
          visible: isLoaded,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              BusinessDetailsPage(articles: articles![index])));
                    },
                    child: Container(
                        height: 140,
                        width: 300,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 19, 103, 247),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 8.0, right: 8),
                              child: Text(
                                "${articles![index].title}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 7, left: 8.0),
                              child: Text(
                                "${articles![index].publishedAt}",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w900),
                              ),
                            )
                          ],
                        )),
                  ),
                );
              },
              itemCount: articles?.length),
          replacement: const Center(child: CircularProgressIndicator()),
        ));
  }
}
