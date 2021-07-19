import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_end_project_database_v2/list_student/model.dart';
import 'package:http/http.dart' as http;

class DataTableWidget extends StatefulWidget {
  @override
  _DataTableWidgetState createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  final List<String> header = ['Id', 'Name', 'Sex', 'Birthday'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: FutureBuilder(
              future: getApi(),
              builder: (context, AsyncSnapshot<List<Student>> snapshot) {
                if (snapshot.hasData) {
                  return RefreshIndicator(
                    onRefresh: getApi,
                    child: DataTable(
                        columns: [
                          for (var head in header) DataColumn(label: Text(head))
                        ],
                        rows: snapshot.data!.map((e) {
                          return DataRow(
                            cells: <DataCell>[
                              DataCell(Text('${e.studentId}'.toString())),
                              DataCell(Text('${e.studentName}'.toString())),
                              DataCell(Text('${e.studentGender}'.toString())),
                              DataCell(
                                  Text('${e.studentBirthOfDate}'.toString())),
                            ],
                          );
                        }).toList()),
                  );
                } else if (snapshot.hasError) {
                  return Text('Error');
                }
                return Center(child: CircularProgressIndicator());
              }),
        ),
      ),
    );
  }

  Future<List<Student>> getApi() async {
    final Uri uri = Uri.parse('http://192.168.8.106:8888/api/Rigister');
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body).cast<Map<String, dynamic>>();
      final List<Student> user =
          jsonData.map<Student>((e) => Student.fromJson(e)).toList();
      print(user);
      setState(() {});
      return user;
    } else
      throw Exception('Error');
  }
}
