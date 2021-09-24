import 'package:flutter/material.dart';


class RotateText extends StatefulWidget {
  const RotateText({Key? key}) : super(key: key); // changed

  @override
  _RotateTextState createState() => _RotateTextState();
}

class _RotateTextState extends State<RotateText> {
  double finalAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    return _defaultApp(context);
  }

  _defaultApp(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('My Template'), // changed
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white38,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 50),
              child: Transform.rotate(
                angle: finalAngle,
                child: SizedBox(
                  height: 400.0,
                  width: 400.0,
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 20,
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      hintText: "Enter what you want...",
                      hintStyle: TextStyle(
                        color: Colors.deepPurple,
                      ),
                      border:  OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),      
                  ),
                ),
              ),
            ),
            Container(
              width: 50,
              height: 50,    
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.deepPurple,
              ),
              
              margin: const EdgeInsets.all(30.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onPanUpdate: (details) {
                      Offset centerOfGestureDetector = Offset(
                          constraints.maxWidth / 2, constraints.maxHeight / 2);
                      final touchPositionFromCenter =
                          details.localPosition - centerOfGestureDetector;
                      // print(touchPositionFromCenter.direction * 180/pi);
                      setState(
                            () {
                          finalAngle = touchPositionFromCenter.direction;
                        },
                      );
                    },
                    child: Transform.rotate(
                      angle: finalAngle,
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}