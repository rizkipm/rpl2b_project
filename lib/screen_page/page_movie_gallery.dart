import 'dart:ui_web';

import 'package:flutter/material.dart';

class PageMovieGallery extends StatefulWidget {
  const PageMovieGallery({super.key});

  @override
  State<PageMovieGallery> createState() => _PageMovieGalleryState();
}

class _PageMovieGalleryState extends State<PageMovieGallery> {

  List<Map<String, dynamic>> listMovie =[
    {
      "judul": "Ancika",
      "gambar": "film1.jpeg",
      "Harga": "Rp 45.000",

    },
    {
      "judul": "Pulang Tak Harus Rumah",
      "gambar": "film2.jpeg",
      "Harga": "Rp 50.000",

    },
    {
      "judul": "Sehidup Semati",
      "gambar": "film3.jpeg",
      "Harga": "Rp 45.000",

    },
    {
      "judul": "The Beepkeeper",
      "gambar": "film4.jpeg",
      "Harga": "Rp 45.000",

    },
    {
      "judul": "13 Bom di Jakarta",
      "gambar": "film5.jpeg",
      "Harga": "Rp 45.000",

    },
    {
      "judul": "Jatuh cinta seperti di film-film",
      "gambar": "film7.jpeg",
      "Harga": "Rp 45.000",

    },
    {
      "judul": "Ancika",
      "gambar": "film8.jpeg",
      "Harga": "Rp 45.000",

    },
    {
      "judul": "Air Mata di Ujung Sajadah",
      "gambar": "film9.png",
      "Harga": "Rp 45.000",

    },

  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Movie App - Gallery'),
      ),

      body: GridView.builder(
        itemCount: listMovie.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                //untuk ke page detail ketika salah satu gambar d klik
                Navigator.push(context, MaterialPageRoute(builder: (context)
                  => PageDetailMovie('${listMovie[index]['judul']}', '${listMovie[index]['Harga']}',
                      '${listMovie[index]['gambar']}')
                ));
              },
              child: Padding(
                padding: EdgeInsets.all(8),
                child: GridTile(
                  footer: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black54),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('${listMovie[index]['judul']}',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Text('${listMovie[index]['Harga']}',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.red
                          ),
                        ),
                      ],
                    ),
                  ),
                  child: Image.asset('gambar/${listMovie[index]['gambar']}',
                    fit: BoxFit.contain,
                    height: 185,
                    width: 185,
                  ),
                ),
              ),

            );
          }),

    );
  }
}

class PageDetailMovie extends StatelessWidget {
  //penampung data
  final String itemJudul, itemHarga, itemGambar;
  const PageDetailMovie(this.itemJudul, this.itemHarga, this.itemGambar,{super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('${itemJudul}'),
        backgroundColor: Colors.green,
      ),

      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset('gambar/${itemGambar}',
                  fit: BoxFit.contain,
                ),
                Text('Harga : ${itemHarga}',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

