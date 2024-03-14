import 'package:flutter/material.dart';
import 'package:mobil_optik_okuyucu/pages/home_page.dart';
// ignore: unused_import
import 'package:mobil_optik_okuyucu/widgets/bottom_icons.dart';

class AnalysisPage extends StatefulWidget {
  @override
  _AnalysisPageState createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Raporlar'),
      ),
      body: Center(
        child: Text(
          'Raporlar Sayfası',
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
