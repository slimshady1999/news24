import 'package:flutter/material.dart';
import 'package:news24/services/apiServices.dart';
import '../../../model/globalBusinessModelClass.dart';

// ignore: must_be_immutable
class GlobalNewsDetailsPage extends StatelessWidget {
  GlobalBusinessNews articles;
  GlobalNewsDetailsPage({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Container(
            height: MediaQuery.of(context).size.height / 1.70,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                // color: Colors.pink,
                borderRadius: BorderRadius.circular(0),
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.darken),
                    fit: BoxFit.cover,
                    image: NetworkImage("${articles.urlToImage}"))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 10.0, right: 18, bottom: 12),
                    child: Text("${articles.title}",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  )
                ])),
        AppBar(
          backgroundColor: Colors.transparent,
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
              margin: const EdgeInsets.only(top: 260),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 9, left: 15.0),
                        height: 70,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            // color: const Color.fromARGB(255, 19, 103, 247),
                            borderRadius: BorderRadius.circular(15)),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CircleAvatar(
                                  backgroundImage:
                                      NetworkImage("${articles.urlToImage}")),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                    articles.author != null
                                        ? "${articles.author}"
                                        : "Jornals B",
                                    overflow: TextOverflow.visible,
                                    style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w900,
                                      color: Color.fromARGB(255, 35, 35, 35),
                                    )),
                              ),
                            ],
                          ),
                        )),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 3.0, left: 12),
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 19, 103, 247),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: const Text("Content",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      // height: 230,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, left: 15, right: 15),
                        child: Text("${articles.content}.",
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w900,
                              color: Color.fromARGB(255, 14, 13, 13),
                            )),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Container(
                        margin: const EdgeInsets.only(top: 18.0, left: 12),
                        height: 35,
                        width: 120,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 19, 103, 247),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text("Description",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Container(
                        // height: 230,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.pink,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 15, right: 15),
                          child: Text("${articles.description}.",
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 21, 21, 21),
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 9),
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Container(
                        margin: const EdgeInsets.only(top: 15.0, left: 12),
                        height: 35,
                        width: 200,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 19, 103, 247),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Center(
                          child: Text("Related Articles",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                        ),
                      ),
                    ),

                    // Related Articles Section //

                    const SizedBox(height: 20),
                    Container(
                      margin: const EdgeInsets.only(top: 7),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      // color: Colors.blue,
                      child: const RelatedArticlesSection(),
                    ),
                  ],
                ),
              )),
        )
      ]),
    );
  }
}

// Related Articles Section //

class RelatedArticlesSection extends StatefulWidget {
  const RelatedArticlesSection({Key? key}) : super(key: key);

  @override
  State<RelatedArticlesSection> createState() => _RelatedArticlesSectionState();
}

class _RelatedArticlesSectionState extends State<RelatedArticlesSection> {
  List<GlobalBusinessNews>? articles;

  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    articles = await GlobalBusinessApiServices().getGlobalNewsData();
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
                return articles![index].urlToImage != null
                    ? Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                context: context,
                                builder: (context) => RelatedArticlePopUp(
                                      articles: articles![index],
                                    ));
                          },
                          child: Container(
                              height: 140,
                              width: 300,
                              decoration: BoxDecoration(

                                  // color: const Color.fromARGB(255, 19, 103, 247),
                                  borderRadius: BorderRadius.circular(13),
                                  image: DecorationImage(
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(0.4),
                                          BlendMode.darken),
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        "${articles![index].urlToImage}",
                                      ))),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 7, left: 8.0),
                                      child: Text(
                                        "${articles![index].publishedAt}",
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                            height: 140,
                            width: 300,
                            decoration: BoxDecoration(
                                // color: const Color.fromARGB(255, 19, 103, 247),
                                borderRadius: BorderRadius.circular(13),
                                image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://images.unsplash.com/photo-1614028674026-a65e31bfd27c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80"),
                                )),
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
                                  padding: const EdgeInsets.only(
                                      bottom: 7, left: 8.0),
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
                      );
              },
              itemCount: articles?.length),
          replacement: const Center(child: CircularProgressIndicator()),
        ));
  }
}

// Related Article Pop Up //

class RelatedArticlePopUp extends StatelessWidget {
  GlobalBusinessNews articles;
  RelatedArticlePopUp({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 1.65,
        width: MediaQuery.of(context).size.width,
        // color: Colors.blue,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(top: 13.0),
              child: Container(
                  margin: const EdgeInsets.only(left: 14, right: 14),
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      // color: Colors.pink,
                      borderRadius: BorderRadius.circular(0),
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2), BlendMode.darken),
                          fit: BoxFit.cover,
                          image: NetworkImage("${articles.urlToImage}"))),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20, left: 10.0, right: 18, bottom: 12),
                          child: Text("${articles.title}",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 255, 255, 255),
                              )),
                        )
                      ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 14.0),
              child: Container(
                margin: const EdgeInsets.only(top: 3.0, left: 12),
                height: 35,
                width: 120,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 19, 103, 247),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text("Content",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              // height: 230,
              width: MediaQuery.of(context).size.width,
              // color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15),
                child: Text("${articles.content}.",
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 14, 13, 13),
                    )),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Container(
                margin: const EdgeInsets.only(top: 18.0, left: 12),
                height: 35,
                width: 120,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 19, 103, 247),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                  child: Text("Description",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                // height: 230,
                width: MediaQuery.of(context).size.width,
                // color: Colors.pink,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15),
                  child: Text("${articles.description}.",
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 21, 21, 21),
                      )),
                ),
              ),
            ),
          ]),
        ));
  }
}
