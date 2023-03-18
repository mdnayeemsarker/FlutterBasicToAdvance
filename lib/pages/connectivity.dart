import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityPage extends StatelessWidget {
  const ConnectivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Connectivitypage();
  }
}

class Connectivitypage extends StatefulWidget {
  const Connectivitypage({super.key});

  @override
  State<Connectivitypage> createState() => _ConnectivitypageState();
}

class _ConnectivitypageState extends State<Connectivitypage> {
  StreamSubscription? subscription;

  @override
  void initState() {
    subscription = Connectivity().onConnectivityChanged.listen((event) {
      checkConnection();
    });
    super.initState();
  }

  @override
  void dispose() {
    subscription!.cancel();
    super.dispose();
  }

  Future checkConnection() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.mobile) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Connected with mobile"),
        duration: Duration(seconds: 2),
      ));
    } else if (connectivityResult == ConnectivityResult.wifi) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Connected with Wifi"),
        duration: Duration(seconds: 2),
      ));
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Not Connected"),
        duration: Duration(seconds: 2),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Connectivity Testing"),
        ),
        body: Center(
            child: OutlinedButton(
                onPressed: () {
                  checkConnection();
                },
                child: const Text("Check Connection"))),
      ),
    );
  }
}
