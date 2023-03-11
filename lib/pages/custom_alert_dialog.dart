import 'package:flutter/material.dart';

class CustomAlertDlgPage extends StatefulWidget {
  const CustomAlertDlgPage({super.key});

  @override
  State<CustomAlertDlgPage> createState() => _CustomAlertDlgPageState();
}

class _CustomAlertDlgPageState extends State<CustomAlertDlgPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Alert Dialog"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 2,
                              width: MediaQuery.of(context).size.width / 3,
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 30,
                                    ),
                                    new Text(
                                      "Alert Dialog",
                                      style: TextStyle(
                                          fontSize: 23,
                                          color:
                                              Color.fromARGB(255, 255, 0, 0)),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    new Text(
                                      "MD. NAYEEM SARKER, Age: 25, phone 01714466703, Address: Khamardurgapur, Jaigirhat, Mithapukur(5460), Rangpur, Bangladesh",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color.fromARGB(
                                              255, 243, 18, 239)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: -50,
                              child: CircleAvatar(
                                radius: 40,
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                    child: Image.asset("images/ip.png")),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
              child: Text("Click me"))),
    );
  }
}
