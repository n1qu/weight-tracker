import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: WeightTracker()));

class WeightTracker extends StatefulWidget {
  @override
  _WeightTrackerState createState() => _WeightTrackerState();
}

class _WeightTrackerState extends State<WeightTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Click Count')),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (BuildContext context, i) {
          i++;
          //return Text(i.toString());
          return Card(
            child: ListTile(
              leading: Text('01.01.2021'),
              title: Text('$i' + '00 kg'),
              trailing: Wrap(
                children: [
                  Icon(Icons.edit),
                  Icon(Icons.delete),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}
