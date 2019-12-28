import 'package:flutter/material.dart';
import 'package:mobx_listview/states/myStates.dart';

class App extends StatefulWidget {
  final Future<List<Model>> data = myState.getUsers();
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("amir"),
        ),
        body: Container(
          child: FutureBuilder(
            future: widget.data,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(child: Center(child: Text("Loading...")));
              } else {
                return (ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(snapshot.data[index].name),
                      subtitle: Text(snapshot.data[index].email),
                    );
                  },
                ));
              }
            },
          ),
        ));
  }
}
