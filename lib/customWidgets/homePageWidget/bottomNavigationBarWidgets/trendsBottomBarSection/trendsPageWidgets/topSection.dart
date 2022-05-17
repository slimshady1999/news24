import "package:flutter/material.dart";

class TopHomeSection extends StatefulWidget {
  const TopHomeSection({Key? key}) : super(key: key);

  @override
  State<TopHomeSection> createState() => _TopHomeSectionState();
}

class _TopHomeSectionState extends State<TopHomeSection> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        height: 70,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 19, 103, 247),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text("trends",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800)),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text("Business Trends",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 17,
                            fontWeight: FontWeight.w800)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.trending_up_sharp, color: Colors.green),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
