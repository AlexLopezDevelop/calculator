import 'package:flutter/material.dart';

class HistoricScreen extends StatefulWidget {
  HistoricScreen({Key key}) : super(key: key);

  _HistoricScreen createState() => new _HistoricScreen();
}

class _HistoricScreen extends State<HistoricScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Card(
              child: Container(
                color: Colors.white,
                height: 50,
                child: Center(
                  child: Text("Historic"),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text("4"),
                      subtitle: Text("2 x 2"),
                      leading: CircleAvatar(
                        child: Text(
                          "$index",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.green,
                      ),
                    ),
                  );
                },
                itemCount: 2,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.calculate),
        backgroundColor: Colors.green,
      ),
    );
  }
}
