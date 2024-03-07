import 'package:flutter/material.dart';
import 'package:mobil_optik_okuyucu/pages/sinavlar_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ana Sayfa'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Image.asset(
                  'assets/image/logo.png',
                  width: 200,
                  height: 200,
                ),
              ),
              // Üst kısımda logo
              Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Image.asset('assets/image/kamera.png',
                      width: 90, height: 90)),

              // İki butonlu satır

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SinavlarPage()));
                    },
                    child: Text('Buton 1'),
                  ),
                  SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Buton 2'),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              // İki butonlu satır
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Buton 3'),
                  ),
                  SizedBox(width: 20.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Buton 4'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
