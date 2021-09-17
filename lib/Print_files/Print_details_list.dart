import 'package:flutter/material.dart';
import 'package:project_no1/Print_files/print_page.dart';
import 'package:project_no1/models/dummy_listview.dart';

class PrintDetails extends StatelessWidget {
  final ProductList list;
  const PrintDetails({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   // TextStyle? textStyle = Theme.of(context).textTheme.headline6;
    return Scaffold(
      appBar: AppBar(title: Text(list.name, style: TextStyle(
        fontWeight: FontWeight.bold, ),),
         backgroundColor: Colors.deepPurple,
        ),
      body: Column(
        children: [
          Image.asset(list.avatarUrl),
          Text(list.name),
        ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => PrintPage()));
          },
          tooltip: "Print Information",
          child: Icon(Icons.print),
          backgroundColor: Colors.deepPurple,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
