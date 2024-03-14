import 'package:flutter/material.dart';
import 'package:mobil_optik_okuyucu/pages/home_page.dart';
// ignore: unused_import
import 'package:mobil_optik_okuyucu/widgets/bottom_icons.dart';

class SinavlarPage extends StatefulWidget {
  @override
  _SinavlarPageState createState() => _SinavlarPageState();
}

class _SinavlarPageState extends State<SinavlarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sınavlar'),
      ),
      body: Center(
        child: Text(
          'Sınavlar Sayfası',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
      bottomNavigationBar: BottomIcons(
        onPressed1: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        },
        onPressed2: () {},
        onPressed3: () {},
        onPressed4: () {},
      ),
    );
  }
}
