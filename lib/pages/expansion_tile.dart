import 'package:flutter/material.dart';

class ExpansionTilePage extends StatelessWidget {
  const ExpansionTilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ExpansionTPage();
  }
}

class ExpansionTPage extends StatefulWidget {
  const ExpansionTPage({super.key});

  @override
  State<ExpansionTPage> createState() => _ExpansionTPageState();
}

class _ExpansionTPageState extends State<ExpansionTPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Expansion Tile"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              tileData("One", "This is one", Icons.access_alarm,
                  Icons.arrow_downward),
              tileData("Two", "This is two", Icons.access_alarm,
                  Icons.arrow_downward),
              tileData("Three", "This is Three", Icons.access_alarm,
                  Icons.arrow_downward),
              tileData("Four", "This is Four", Icons.access_alarm,
                  Icons.arrow_downward),
              tileData("Five", "This is Five", Icons.access_alarm,
                  Icons.arrow_downward),
              tileData("Six", "This is six", Icons.access_alarm,
                  Icons.arrow_downward),
              tileData("Seven", "This is Seven", Icons.access_alarm,
                  Icons.arrow_downward),
              tileData("Eight", "This is eight", Icons.access_alarm,
                  Icons.arrow_downward),
              tileData("Nine", "This is nine", Icons.access_alarm,
                  Icons.arrow_downward),
              tileData("Ten", "This is ten", Icons.access_alarm,
                  Icons.arrow_downward),
            ],
          ),
        ),
      ),
    );
  }
}

Widget tileData(
  String title,
  String subTitle,
  IconData leadingIcon,
  IconData trailingIcon,
) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: ExpansionTile(
      title: Text(title),
      subtitle: Text(subTitle),
      leading: Icon(leadingIcon),
      trailing: Icon(trailingIcon),
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Container(
            color: Colors.amber,
            child: Column(
              children: [
                Text(title),
                SizedBox(height: 10),
                Text(subTitle),
                SizedBox(height: 10),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Center(
                    child: Icon(leadingIcon),
                  ),
                  SizedBox(width: 10),
                  Center(
                    child: Icon(trailingIcon),
                  )
                ]),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
