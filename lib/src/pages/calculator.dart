import 'package:calculator/src/pages/historic_screen.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  CalculatorScreen({Key key}) : super(key: key);

  _CalculatorScreen createState() => new _CalculatorScreen();
}

class _CalculatorScreen extends State<CalculatorScreen> {
  List<String> operations = [];
  List<String> calculations = [];
  bool isNewEquation = true;
  String calculatorString = '';
  String output = "0", _output = "0";
  String operand = "";
  double num1, num2 = 0;

  buttonPressed(String buttonText) {
    if (buttonText == "CLEAR") {
      _output = "0";
      num1 = 0;
      num2 = 0;
      operand = "";
    } else if (buttonText == "/" ||
        buttonText == "x" ||
        buttonText == "-" ||
        buttonText == "+") {
      num1 = double.parse(output);
      operand = buttonText;
      _output = "0";
    } else if (buttonText == ",") {
      if (_output.contains(".")) {
        print("El numero ya tiene decimales"); // TODO: show message
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }
      if (operand == "x") {
        _output = (num1 * num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "+") {
        _output = (num1 + num2).toString();
      }

      calculations.add("$num1 $operand $num2");
      operations.add("$_output");
      num1 = 0;
      num2 = 0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    print(_output);

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 10,
                      child: SizedBox(
                        width: double.infinity,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              border: Border.all(
                                color: Colors.black87,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          margin: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 30.0),
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
                          child: Text(
                            output,
                            style: TextStyle(
                                height: 1,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Row(
                  // TODO: create row builder
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 2, // 20%
                      child: RawMaterialButton(
                        // TODO: create button builder
                        onPressed: () {
                          buttonPressed("7");
                        },
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
                        onPressed: () {
                          buttonPressed("8");
                        },
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
                        onPressed: () {
                          buttonPressed("9");
                        },
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
                        onPressed: () {
                          buttonPressed("/");
                        },
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
                        onPressed: () {
                          buttonPressed("4");
                        },
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
                        onPressed: () {
                          buttonPressed("5");
                        },
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
                        onPressed: () {
                          buttonPressed("6");
                        },
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
                        onPressed: () {
                          buttonPressed("x");
                        },
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
                        onPressed: () {
                          buttonPressed("1");
                        },
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
                        onPressed: () {
                          buttonPressed("2");
                        },
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
                        onPressed: () {
                          buttonPressed("3");
                        },
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
                        onPressed: () {
                          buttonPressed("-");
                        },
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
                      child: Container(
                        margin: const EdgeInsets.only(left: 10, right: 10),
                        child: FlatButton(
                          height: 60,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0),
                              side: BorderSide(color: Colors.grey[500])),
                          color: Colors.grey[500],
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            buttonPressed("0");
                          },
                          child: Text(
                            "0",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2, // 20%
                      child: RawMaterialButton(
                        onPressed: () {
                          buttonPressed(",");
                        },
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
                        onPressed: () {
                          buttonPressed("+");
                        },
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
                      flex: 6, // 20%
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: FlatButton(
                          height: 60,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(35.0),
                              side: BorderSide(color: Colors.red[500])),
                          color: Colors.red[500],
                          padding: EdgeInsets.all(8.0),
                          onPressed: () {
                            buttonPressed("=");
                          },
                          child: Text(
                            "=",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2, // 20%
                      child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: RawMaterialButton(
                          onPressed: () {
                            buttonPressed("CLEAR");
                          },
                          elevation: 2.0,
                          fillColor: Colors.orange[400],
                          child: Text(
                            "AC",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(20.0),
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(top: 10),
                child: new IconButton(
                    icon: new Icon(
                      Icons.history,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _navigateAndDisplayHistory(context);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _navigateAndDisplayHistory(BuildContext context) async {
    print(operations.length);
    print(calculations.length);
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HistoricScreen(
                  operations: operations,
                  calculations: calculations,
                )));

    if (result != null) {
      setState(() {
        isNewEquation = false;
        calculatorString = result;
      });
    }
  }
}
