import 'package:ahmadfauzyk19552011328/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AhmadFauzy());
}

class AhmadFauzy extends StatelessWidget {
  const AhmadFauzy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardScreen(),
    );
  }
}
