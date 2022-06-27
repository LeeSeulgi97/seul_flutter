import 'package:flutter/material.dart';
import 'package:seul_flutter/sort_ex/column_sort.dart';
import 'package:seul_flutter/sort_ex/row_sort.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: OutlinedButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ColumnSort()));
                  },
                  child: Text('Column 정렬')
              ),

            ),
            Container(
              child: OutlinedButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => RowSort()));
                  },
                  child: Text('Row 정렬')
              ),

            )
          ],
        ),
      ),
    );
  }
}
