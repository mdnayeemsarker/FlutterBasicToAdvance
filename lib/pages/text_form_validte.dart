import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_basic_advance/pages/home_page.dart';

class TextFromFieldPage extends StatelessWidget {
  const TextFromFieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextFromFieldpage();
  }
}

class TextFromFieldpage extends StatefulWidget {
  const TextFromFieldpage({super.key});

  @override
  State<TextFromFieldpage> createState() => _TextFromFieldpageState();
}

class _TextFromFieldpageState extends State<TextFromFieldpage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Text From Field Validation"),
        ),
        body: Center(
          child: Form(
              key: _formKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.name,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your name.";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter email address.";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter phone number.";
                        }
                        return null;
                      },
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) => const HomePage()));
                          }
                        },
                        child: const Text("Submit"),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
