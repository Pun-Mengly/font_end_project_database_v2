import 'package:flutter/material.dart';

class Attendance extends StatelessWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.green,
        ),
        child: DataTable(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.indigo, width: 2)),
            headingTextStyle: TextStyle(color: Colors.white),
            headingRowColor:
                MaterialStateColor.resolveWith((states) => Colors.blue),
            columns: [
              DataColumn(label: Text('Id')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Sex')),
              DataColumn(label: Text('Date')),
              DataColumn(label: Text('Status')),
            ],
            rows: <DataRow>[
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Mohit')),
                DataCell(Text('Male')),
                DataCell(Text('January')),
                DataCell(Text('Yes')),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Kung')),
                DataCell(Text('Female')),
                DataCell(Text('February')),
                DataCell(Text('Yes')),
              ]),
            ]),
      )),
    );
  }
}
