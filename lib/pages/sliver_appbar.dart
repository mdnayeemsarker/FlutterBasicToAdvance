import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({super.key});

  @override
  State<SliverAppBarPage> createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Sliver Appbar"),
      // ),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            backgroundColor: Colors.blueGrey,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("MD. NAYEEM SARKER"),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              addDetails("One", "This is one's description"),
              addDetails("Two", "This is two's description"),
              addDetails("Three", "This is three's description"),
              addDetails("Four", "This is four's description"),
              addDetails("Five", "This is five's description"),
              addDetails("Six", "This is six's description"),
              addDetails("Seven", "This is seven's description"),
              addDetails("Eight", "This is eight's description"),
              addDetails("Eight", "This is eight's description"),
              addDetails("Eight", "This is eight's description"),
              addDetails("Eight", "This is eight's description"),
              addDetails("Nine", "This is nine's description"),
              addDetails("Ten", "This is ten's description"),
              addDetails("Ten", "This is ten's description"),
              addDetails("Ten", "This is ten's description"),
              addDetails("Ten", "This is ten's description"),
              addDetails("Ten", "This is ten's description"),
            ]),
          )
        ],
      ),
    );
  }
}

Widget addDetails(String name, String description) {
  return ListTile(
    title: Text(name),
    subtitle: Text(description),
    leading: CircleAvatar(
      child: Text(name[0]),
    ),
  );
}
