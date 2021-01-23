import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

Stream<int> getNumbers() async* {
  for (var i = 1; i <= 3; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 3));
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Streams Demo'),
      ),
      body: Center(
        child: StreamBuilder<int>(
            stream: getNumbers(),
            builder: (context, snapshot) {
              return Text(
                snapshot.hasData ? snapshot.data.toString() : 'no data found',
                style: TextStyle(fontSize: 50.0),
              );
            }),
      ),
    );
  }
}
