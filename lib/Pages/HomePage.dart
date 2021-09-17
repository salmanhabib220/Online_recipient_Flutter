import 'package:flutter/material.dart';
import 'package:project_no1/Pages/products.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage", style:  TextStyle(fontWeight: FontWeight.bold),),
        elevation: 10,
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(),
      body: ListView(
        
        padding: EdgeInsets.all(10),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text("Catagories", style: TextStyle(
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
            ),
          ),
          // SizedBox(
          //   height: 2.0,
          // ),
          Container(
           height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: ProductsGrid(),
          ),
        ],
      ),
    );
  }

}
