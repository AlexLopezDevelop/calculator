import 'package:flutter/material.dart';

class HistoricScreen extends StatelessWidget {
  HistoricScreen({@required this.operations});

  final List<String> operations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: operations.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(operations[index]),
              leading: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red[800], width: 2.0),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "$index",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                padding: EdgeInsets.all(5),
              ),
            );
          },
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
      itemBuilder: (BuildContext context, int i) {
        return ListTile(
          title: Text(operations[i]),
          onTap: () {
            Navigator.pop(context, operations[i]);
          },
          leading: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red[800], width: 2.0),
                borderRadius: BorderRadius.circular(50)),
            child: Text(
              operations[i],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            padding: EdgeInsets.all(5),
          ),
        );
      },
    );
  }
}
