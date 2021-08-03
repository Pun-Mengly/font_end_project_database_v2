import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';

class DataTableWidget extends StatefulWidget {
  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  final List<String> header = [
    'Id',
    'FName',
    'LName',
    'Sex',
    'Birthday',
    'Contact',
    'Address'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          actions: [
            CircleAvatar(
              child: Image.asset('assets/images/dashboard/Information.png'),
            ),
            SizedBox(
              width: 12,
            )
          ],
          title: Text('List of class'.toUpperCase()),
          backgroundColor: Colors.indigo,
        ),
      ],
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: FutureBuilder(
                future: getApi(),
                builder: (context, AsyncSnapshot<List<Student>> snapshot) {
                  if (snapshot.hasData) {
                    return RefreshIndicator(
                      onRefresh: getApi,
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Colors.green,
                        ),
                        child: DataTable(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.indigo, width: 2)),
                            headingTextStyle: TextStyle(color: Colors.white),
                            headingRowColor: MaterialStateColor.resolveWith(
                                (states) => Colors.indigo),
                            columns: [
                              for (var head in header)
                                DataColumn(label: Text(head))
                            ],
                            rows: snapshot.data!.map((e) {
                              return DataRow(
                                cells: <DataCell>[
                                  DataCell(Text('${e.stuId}'.toString())),
                                  DataCell(Text('${e.stuFname}'.toString())),
                                  DataCell(Text('${e.stuLname}'.toString())),
                                  DataCell(Text('${e.stuSex}'.toString())),
                                  DataCell(Text('${e.stuDob}')),
                                  DataCell(Text('${e.stuPhone}'.toString())),
                                  DataCell(Text('${e.stuAdd}'.toString())),
                                ],
                              );
                            }).toList()),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return Text('Error');
                  }
                  return Center(child: CircularProgressIndicator());
                }),
          ),
        ),
      ),
    ));
  }

  Future<List<Student>> getApi() async {
    final Uri uri =
        Uri.parse('http://mengly-001-site1.dtempurl.com/api/Students');
    final response = await http.get(uri);
    print(response.body);
    if (response.statusCode == 200) {
      //print('fff');
      final jsonData = jsonDecode(response.body).cast<Map<String, dynamic>>();
      final List<Student> person =
          jsonData.map<Student>((e) => Student.fromJson(e)).toList();
      //  print(person);
      setState(() {});
      return person;
    } else
      throw Exception('Error');
  }
}
