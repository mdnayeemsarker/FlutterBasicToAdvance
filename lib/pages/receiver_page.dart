import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/state_data.dart';
import 'package:provider/provider.dart';

class ReceiverDataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final proviverData = Provider.of<StateData>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Receiver page"),
      ),
      body: Center(
        child: Text(
          proviverData.value.toString(),
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
