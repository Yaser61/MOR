import 'package:flutter/material.dart';
import 'package:mobil_optik_okuyucu/pages/home_page.dart';
// ignore: unused_import
import 'package:mobil_optik_okuyucu/widgets/bottom_icons.dart';

class StudentsPage extends StatefulWidget {
  @override
  _StudentsPageState createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Öğrenciler'),
      ),
      body: Center(
        child: Text(
          'Öğrenciler Sayfası',
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
