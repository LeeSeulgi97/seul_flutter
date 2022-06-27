import 'package:flutter/material.dart';

class ColumnSort extends StatefulWidget{
  @override
  State<ColumnSort> createState() => _ColumnSortState();
}

class _ColumnSortState extends State<ColumnSort> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                child: OutlinedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ColumnSort()));
                    },
                    child: Text('Column mainAxisAlignment')
                ),

              ),
              Container(
                child: OutlinedButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ColumnSort()));
                    },
                    child: Text('Column crossAxisAlignment')
                ),

              ),
            ],
          ),
        )
    );
  }
}