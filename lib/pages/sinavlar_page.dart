import 'package:flutter/material.dart';
import 'package:mobil_optik_okuyucu/forms/OptikForm20.dart';
import 'package:mobil_optik_okuyucu/pages/home_page.dart';
import 'package:mobil_optik_okuyucu/widgets/bottom_icons.dart'; // OptikForm20 sayfasını içe aktarın

class SinavlarPage extends StatefulWidget {
  @override
  _SinavlarPageState createState() => _SinavlarPageState();
}

class _SinavlarPageState extends State<SinavlarPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Map<int, String> _answers = {}; // Her sorunun cevabını saklamak için bir map

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sınavlar'),
      ),
      body: Form(
        key: _formKey,
        child: ListView.builder(
          itemCount: 20, // Toplam soru sayısı
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Soru ${index + 1}:',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      buildOption('A', index),
                      buildOption('B', index),
                      buildOption('C', index),
                      buildOption('D', index),
                    ],
                  ),
                ],
              ),
            );
          },
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

  Widget buildOption(String option, int index) {
    return Row(
      children: [
        Radio<String>(
          value: option,
          groupValue: _answers[index],
          onChanged: (value) {
            setState(() {
              _answers[index] = value!;
            });
          },
        ),
        Text(option),
      ],
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Sınavlar'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sınavlar Sayfası',
            style: TextStyle(fontSize: 24.0),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => OptikForm20(
                          answers: {},
                          onAnswerChanged: (index, value) {},
                        )),
              );
            },
            child: Text('Optik Formu Göster'),
          ),
        ],
      ),
    ),
  );
}
