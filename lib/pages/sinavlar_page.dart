import 'package:flutter/material.dart';

class SinavlarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sınavlar'),
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry>[
                PopupMenuItem(
                  child: Text('Sınav Ekle'),
                  value: 'ekle',
                ),
                PopupMenuItem(
                  child: Text('Sınavları Düzenle'),
                  value: 'duzenle',
                ),
                PopupMenuItem(
                  child: Text('Sınavları Sil'),
                  value: 'sil',
                ),
              ];
            },
            onSelected: (value) {
              // Seçilen işleme göre işlevleri burada tanımlayabilirsiniz.
              if (value == 'ekle') {

              } else if (value == 'duzenle') {

              } else if (value == 'sil') {

              }
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Sınavlar Sayfası',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
