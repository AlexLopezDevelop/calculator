import 'package:flutter/material.dart';

class HistoricScreen extends StatelessWidget {
  HistoricScreen({@required this.operations, this.calculations});

  final List<String> operations;
  final List<String> calculations;

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
              child: _operationsList(operations),
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

  Widget _operationsList(List<String> operations) {
    return ListView.builder(
      itemCount: operations.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text("Solution: " + operations[index]),
            subtitle: Text("Operation: " + calculations[index]),
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
    );
  }
}
