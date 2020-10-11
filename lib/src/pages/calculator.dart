import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({Key key}) : super(key: key);

  _CalculatorScreen createState() => new _CalculatorScreen();
}

class _CalculatorScreen extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: Border.all(
                          color: Colors.black87,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    margin: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 30.0),
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                    child: Text(
                      "352,000",
                      style: TextStyle(
                          height: 1, fontSize: 40, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[500],
                          child: Text(
                            "7",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[500],
                          child: Text(
                            "8",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[500],
                          child: Text(
                            "9",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.orange[400],
                          child: Text(
                            "/",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[500],
                          child: Text(
                            "4",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[500],
                          child: Text(
                            "5",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[500],
                          child: Text(
                            "6",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.orange[400],
                          child: Text(
                            "x",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[500],
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[500],
                          child: Text(
                            "2",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[500],
                          child: Text(
                            "3",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.orange[400],
                          child: Text(
                            "-",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 4, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[500],
                          child: Text(
                            ",",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.grey[500],
                          child: Text(
                            ",",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Expanded(
                        flex: 2, // 20%
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.orange[400],
                          child: Text(
                            "+",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 4, // 20%
                        child: FlatButton(
                          height: 60,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0),
                              side: BorderSide(color: Colors.red[500])),
                          color: Colors.red[500],
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {},
                          child: Text(
                            "=",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

// Rounded button
/*
RawMaterialButton(
                onPressed: () {},
                elevation: 2.0,
                fillColor: Colors.white,
                child: Text("1"),
                padding: EdgeInsets.all(15.0),
                shape: CircleBorder(),
              )
 */
