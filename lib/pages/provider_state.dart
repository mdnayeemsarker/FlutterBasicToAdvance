import 'package:flutter/material.dart';
import 'package:flutter_basic_advance/pages/state_data.dart';
import 'package:provider/provider.dart';

class ProviderStatePage extends StatelessWidget {
  const ProviderStatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => StateData(), child: Providerhome());
  }
}

class Providerhome extends StatefulWidget {
  const Providerhome({super.key});

  @override
  State<Providerhome> createState() => _ProviderhomeState();
}

class _ProviderhomeState extends State<Providerhome> {
  @override
  Widget build(BuildContext context) {
    final proviverData = Provider.of<StateData>(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Provider State management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              proviverData.value.toString(),
              style: TextStyle(fontSize: 50),
            ),
            ElevatedButton(
                onPressed: () {
                  proviverData.Increment();
                },
                child: Text("Click"))
          ],
        ),
      ),
    ));
  }
}
