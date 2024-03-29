import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mobil_optik_okuyucu/pages/analysis_page.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobil_optik_okuyucu/pages/sinavlar_page.dart';
import 'package:mobil_optik_okuyucu/pages/students_page.dart';
// ignore: unused_import
import 'package:mobil_optik_okuyucu/widgets/bottom_icons.dart';

import '../utils/utility.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ValueNotifier<XFile?> image = ValueNotifier(null);
  ValueNotifier<String> text = ValueNotifier("");

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
              // Üst kısımda logo
              IconButton(
                onPressed: () {
                  imagePick(ImageSource.camera);
                },
                icon: const Icon(Icons.camera_alt_outlined),
                iconSize: 50,
              ),
              const SizedBox(height: 40),
              ValueListenableBuilder(
                valueListenable: image,
                builder: (_,__,___) {
                  return Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: FileImage(
                          File(image.value?.path ?? ""),
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                }
              ),

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

  void imagePick(ImageSource imageSource) async {
    image.value = await Utility().pickImageFromGallery(imageSource);
    // veritabanı işlemlerini burda yapabilirsin
    debugPrint("image path ${image.value?.path ?? ""}");
  }
}
