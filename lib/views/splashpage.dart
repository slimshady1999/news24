import "package:flutter/material.dart";

import 'homepage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HomePage()));
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Image.asset(
                  "images/illus2.jpg",
                  height: 250,
                  width: 250,
                ),
              )),
          Align(
            alignment: Alignment.center,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: 60,
                width: 200,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 19, 103, 247),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(17),
                        bottomRight: Radius.circular(17))),
                child: const Center(
                  child: Text(
                    "News24",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
              ),
              const SizedBox(height: 45),
              const CircularProgressIndicator(
                color: Colors.blue,
                strokeWidth: 4,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
