import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.black,
              child: TextButton(
                child: Text(
                  'Alert Material',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  debugPrint('Alert Material Clicked');
                  _showAlertDialogMaterial();
                },
              ),
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.blue,
              child: TextButton(
                child: Text(
                  'Alert Cupertino',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  debugPrint('Alert Cupertino Clicked');
                  _showAlertDialogCupertino();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  _showAlertDialogMaterial() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Terima'),
        content: Text('Apakah anda yakin?'),
        actions: [
          TextButton(
            child: Text('No'),
            onPressed: () {
              debugPrint('No, Clicked');
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: Text('Yes'),
            onPressed: () {
              debugPrint('Yes, Clicked');
              Navigator.pop(context);
            },
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  _showAlertDialogCupertino() {
    showDialog(
      context: context,
      builder: (_) => CupertinoAlertDialog(
        title: Text('Terima'),
        content: Text('Apakah anda yakin?'),
        actions: [
          CupertinoDialogAction(
            child: Text('No'),
            onPressed: () {
              debugPrint('No, Clicked');
              Navigator.pop(context);
            },
          ),
          CupertinoDialogAction(
            child: Text('Yes'),
            onPressed: () {
              debugPrint('Yes, Clicked');
              Navigator.pop(context);
            },
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}
