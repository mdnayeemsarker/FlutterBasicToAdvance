// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/http_details.dart';
import 'package:http/http.dart' as http;

class HttpRequestPage extends StatelessWidget {
  const HttpRequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HttpRequest();
  }
}

class HttpRequest extends StatefulWidget {
  const HttpRequest({super.key});

  @override
  State<HttpRequest> createState() => _HttpRequestState();
}

class _HttpRequestState extends State<HttpRequest> {
  // ignore: prefer_typing_uninitialized_variables
  var data;

  getHttpData() async {
    String url = "https://dummyjson.com/products";

    var response = await http.get(Uri.parse(url));

    setState(() {
      var decode = jsonDecode(response.body);
      data = decode["products"];
      print(data);
    });
  }

  @override
  void initState() {
    super.initState();
    getHttpData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Http Request with Json"),
          ),
          body: ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (context, index) {
              var fData = data[index];

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    data == null
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.amber,
                            ),
                          )
                        : ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailsPage(receivedData: fData)));
                            },
                            title: Text(fData["title"]),
                            subtitle: Text(fData["description"]),
                            leading: Image.network(
                              fData["thumbnail"],
                              height: 100,
                              width: 100,
                              fit: BoxFit.contain,
                            ),
                            trailing: Column(children: [
                              Text("\$${fData["price"]}"),
                              Text("*${fData["rating"]}".toString()),
                            ]),
                          ),
                  ],
                ),
              );
            },
          )),
    );
  }
}
