import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mobil_optik_okuyucu/pages/sinavlar_page.dart';

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

  void imagePick(ImageSource imageSource) async {
    image.value = await Utility().pickImageFromGallery(imageSource);
    // veritabanı işlemlerini burda yapabilirsin
    debugPrint("image path ${image.value?.path ?? ""}");
  }
}
