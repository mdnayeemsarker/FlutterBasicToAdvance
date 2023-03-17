import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncherPage extends StatelessWidget {
  const UrlLauncherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const UrlLaunchPage();
  }
}

class UrlLaunchPage extends StatefulWidget {
  const UrlLaunchPage({super.key});

  @override
  State<UrlLaunchPage> createState() => _UrlLaunchPageState();
}

class _UrlLaunchPageState extends State<UrlLaunchPage> {
  final Uri url = Uri.parse("https://google.com");
  final String call = "tel:01714466703";
  final String sms = "sms:01714466703";

  Future<void> _launchUrl() async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  _launchCallSms(String type) {
    launchUrlString(type);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Url Launcher page"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _launchUrl();
                },
                child: const Icon(Icons.web),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchCallSms(call);
                },
                child: const Icon(Icons.call),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchCallSms(sms);
                },
                child: const Icon(Icons.message),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
