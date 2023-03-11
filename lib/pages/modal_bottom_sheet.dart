import 'package:flutter/material.dart';

class ModalBotomSheetPage extends StatefulWidget {
  const ModalBotomSheetPage({super.key});

  @override
  State<ModalBotomSheetPage> createState() => _ModalBotomSheetPageState();
}

class _ModalBotomSheetPageState extends State<ModalBotomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Modal Bottom Sheet"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 250,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text("One"),
                          subtitle: Text("This is one"),
                          trailing: Icon(Icons.access_time),
                        ),
                        ListTile(
                          title: Text("One"),
                          subtitle: Text("This is one"),
                          trailing: Icon(Icons.access_time),
                        ),
                        ListTile(
                          title: Text("One"),
                          subtitle: Text("This is one"),
                          trailing: Icon(Icons.access_time),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text("Click Me")),
      ),
    );
  }
}
