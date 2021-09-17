import 'package:flutter/material.dart';
import 'package:project_no1/Listofproduct/Custom_product.dart';
import 'package:project_no1/Listofproduct/Design_product.dart';
import 'package:project_no1/Listofproduct/Template_product.dart';

class ProductsGrid extends StatefulWidget {
  ProductsGrid({Key? key}) : super(key: key);

  @override
  _ProductsGridState createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  GestureDetector(
                    child:
                        _buildCard('Design', 'images/Designs.jpeg', context),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                           return Designproduct();
                        }));
                    },
                  ),
                  GestureDetector(
                    child: _buildCard(
                        'Template', 'images/templates.png', context),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                               return Tempalteproduct();
                      }));
                    },
                  ),
                  GestureDetector(
                    child:
                        _buildCard('Custom', 'images/custom.jpeg', context),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return Customproduct();
                         }));
                    },
                  ),
                ],
              )),
          // SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String imgPath, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            // onTap: () {
            //   Navigator.push(context, MaterialPageRoute(builder: (context) {
            //     return Listproduct();
            //   }));
            // },
            child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 3.0,
                    blurRadius: 5.0)
              ],
              color: Colors.white),
          child: Column(
            children: [
              Hero(
                tag: imgPath,
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(),
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        )
        )
        );
  }
}
