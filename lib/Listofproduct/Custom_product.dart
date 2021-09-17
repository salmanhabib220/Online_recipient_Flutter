import 'package:flutter/material.dart';
import 'package:project_no1/Pages/addproduct.dart';
import 'package:project_no1/Print_files/Print_details_list.dart';
import 'package:project_no1/models/dummy_listview.dart';

class Customproduct extends StatefulWidget {
  const Customproduct({Key? key}) : super(key: key);

  @override
  _CustomproductState createState() => _CustomproductState();
}

class _CustomproductState extends State<Customproduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom"),
        elevation: 10,
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: Dummydata.length,
        itemBuilder: (context, i) => Column(
          children: [
            Divider(
              height: 10,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PrintDetails(list: Dummydata[i],)));
              },
              leading: CircleAvatar(
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(Dummydata[i].avatarUrl),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Dummydata[i].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    Dummydata[i].time,
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              subtitle: Container(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  Dummydata[i].message,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15.0,
                  ),
                ),
              ),
              
            ),
          ],
        ),
      ),
      //Floating Action butoon For Adding New Item/product,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddProduct();
          }));
        },
        elevation: 5,
        tooltip: "Add New Product",
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}