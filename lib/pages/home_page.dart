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
        backgroundColor: Colors.purple[50],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
              // Üst kısımda logo
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: Image.asset(
                  'assets/images/kamera.png',
                  width: 90,
                  height: 90,
                ),
              ),

              SizedBox(height: 20.0),

              // İki butonlu satır
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(50),
                      right: Radius.circular(0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SinavlarPage()),
                        );
                      },
                      child: Text('Sınavlar'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFBE0B),
                        onPrimary: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  ClipRRect(
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(0),
                      right: Radius.circular(50),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SinavlarPage()),
                        );
                      },
                      child: Text('Sınavlar'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFBE0B),
                        onPrimary: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),
                ],
              ),
              // İkinci butonlu satırın kopyası
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(50),
                      right: Radius.circular(0),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SinavlarPage()),
                        );
                      },
                      child: Text('Sınavlar'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFBE0B),
                        onPrimary: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0),
                  ClipRRect(
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(0),
                      right: Radius.circular(50),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SinavlarPage()),
                        );
                      },
                      child: Text('Sınavlar'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFBE0B),
                        onPrimary: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                    ),
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
