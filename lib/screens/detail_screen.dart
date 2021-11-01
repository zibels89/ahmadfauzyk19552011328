import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DetailScreen extends StatefulWidget {
  final String design;
  const DetailScreen({Key? key, required this.design}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hai, ' + widget.design),
      ),
    );
  }
}
