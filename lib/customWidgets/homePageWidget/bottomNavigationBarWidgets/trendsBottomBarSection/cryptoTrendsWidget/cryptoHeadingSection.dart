import 'package:flutter/material.dart';

class CryptoHeadingSection extends StatelessWidget {
  const CryptoHeadingSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 200,
      child: Row(children: const [
        Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text("Crypto Trends",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 17,
                  fontWeight: FontWeight.w800)),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Icon(Icons.trending_up_sharp, color: Colors.green),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Icon(Icons.trending_down_sharp, color: Colors.red),
        )
      ]),
    );
  }
}
