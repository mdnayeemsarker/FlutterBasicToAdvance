import 'package:flutter/material.dart';

class DatatablePage extends StatelessWidget {
  const DatatablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Datatable();
  }
}

class Datatable extends StatefulWidget {
  const Datatable({super.key});

  @override
  State<Datatable> createState() => _DatatableState();
}

class _DatatableState extends State<Datatable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Data Table"),
        ),
        body: Center(
          child: DataTable(columns: const [
            DataColumn(label: Text("Id")),
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Email")),
          ], rows: const [
            DataRow(cells: [
              DataCell(Text("01")),
              DataCell(Text("Md Nayeem")),
              DataCell(Text("nayeem@amralab.com")),
            ]),
          ]),
        ),
      ),
    );
  }
}
