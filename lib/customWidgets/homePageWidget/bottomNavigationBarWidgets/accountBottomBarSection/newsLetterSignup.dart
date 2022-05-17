import 'package:flutter/material.dart';

class NewsLetter extends StatelessWidget {
  const NewsLetter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 13.0, left: 20),
            child: Text("NewsLetter!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Color.fromARGB(255, 19, 103, 247),
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 7.0, left: 20),
            child: Text("Sign up for News Letter!",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87)),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 7.0, left: 20),
            child: Text("Get Instant Push->Notification!",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 8.80,
              width: MediaQuery.of(context).size.width,
              // color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
                child: TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      label: const Text("Email"),
                      filled: true,
                      prefixIcon: const Icon(Icons.mark_email_read),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Align(
              alignment: Alignment.center,
              child: Container(
                height: 55,
                width: 250,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 19, 103, 247),
                  child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: const Center(
                        child: Text("Subscribe",
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                color: Colors.white)),
                      )),
                ),
              ))
        ],
      ),
    );
  }
}
