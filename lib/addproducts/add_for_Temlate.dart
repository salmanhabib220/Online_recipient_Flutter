import 'package:flutter/material.dart';

class AddTemplate extends StatefulWidget {
  const AddTemplate({Key? key}) : super(key: key);

  @override
  _AddTemplateState createState() => _AddTemplateState();
}

class _AddTemplateState extends State<AddTemplate> {
  @override
  Widget build(BuildContext context) {
  TextStyle? textStyle = Theme.of(context).textTheme.bodyText1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Templates"),
        elevation: 10,
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(
            children: [
              //First Text Form Field title
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextFormField(
                  style: textStyle,
                  decoration: InputDecoration(
                    labelText: "Title",
                    labelStyle: textStyle,
                    hintText: "Enter your title of Product",
                    hintStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              //Second Form Text Field Description
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  style: textStyle,
                  decoration: InputDecoration(
                    labelText: "Description",
                    labelStyle: textStyle,
                    hintText: "Enter your Product Description Here",
                    hintStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              //Third Text Foam
                    Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  style: textStyle,
                  decoration: InputDecoration(
                    labelText: "Receiving Phase Date",
                    labelStyle: textStyle,
                    hintText: "Enter your Product Receiving Date",
                    hintStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
              //Forth Foam of Expired Date
             Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  style: textStyle,
                  decoration: InputDecoration(
                    labelText: "Expired Date",
                    labelStyle: textStyle,
                    hintText: "Enter your Expired Date",
                    hintStyle: textStyle,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),

              //Buttons For Save and cancel 
              Padding(
                padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
            
                        ),
                        alignment: Alignment.center,
                       ),
                        child: Text(
                          "Save",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                      width: 15.0,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),            
                        ),
                        alignment: Alignment.center,
                       ),
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
