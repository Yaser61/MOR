import 'package:flutter/material.dart';
import 'package:mobil_optik_okuyucu/pages/analysis_page.dart';
import 'package:mobil_optik_okuyucu/pages/sinavlar_page.dart';
import 'package:mobil_optik_okuyucu/pages/students_page.dart';
// ignore: unused_import
import 'package:mobil_optik_okuyucu/widgets/bottom_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFddcbdc),
          title: const Row(
            children: [
              Icon(Icons.home_work_outlined, color: Colors.black),
              SizedBox(width: 8),
              Text(
                "Mobil Optik Okuyucu",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 247, 235, 249),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(
                      0xFFddcbdc), // Açılır menü başlığının arka plan rengi
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/kucuklogo.png',
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(width: 10, height: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HIZLI, GÜVENİLİR VE KOLAY",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900,
                            wordSpacing: 2.0,
                          ),
                        ),
                        Text(
                          "Optical Monster",
                          style: TextStyle(
                            wordSpacing: 2.0,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2.0,
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              ListTile(
                title: const Text('Sınavlar'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SinavlarPage()),
                  );
                },
              ),
              // İsteğe bağlı olarak diğer menü öğelerini buraya ekleyebilirsiniz
            ],
          ),
        ),
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
              SizedBox(height: 0.1),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Image.asset(
                  'assets/images/kamera.png',
                  width: 90,
                  height: 90,
                ),
              ),
              const SizedBox(height: 10.0),
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
                      child: const Text('Sınavlar       '),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFFBE0B),
                        onPrimary: Colors.black,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                    height: 1.0,
                  ),
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
                              builder: (context) => StudentsPage()),
                        );
                      },
                      child: const Text('   Öğrenciler'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFFBE0B),
                        onPrimary: Colors.black,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
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
                              builder: (context) => AnalysisPage()),
                        );
                      },
                      child: const Text('Raporlar    '),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFFBE0B),
                        onPrimary: Colors.black,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
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
                      child: const Text('Bulamadım ?'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFFBE0B),
                        onPrimary: Colors.black,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
