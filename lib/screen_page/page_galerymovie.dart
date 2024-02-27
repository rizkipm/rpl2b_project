import 'package:flutter/material.dart';

class PageGaleryMovie extends StatefulWidget {
  const PageGaleryMovie({super.key});

  @override
  State<PageGaleryMovie> createState() => _PageGaleryMovieState();
}

class _PageGaleryMovieState extends State<PageGaleryMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Galery Movie'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('gambar/film1.jpeg', height: 150, width: 100,),
            Image.asset('gambar/film2.jpeg', height: 150, width: 100,),
            Image.asset('gambar/film2.jpeg', height: 150, width: 100,),
            Image.asset('gambar/film1.jpeg', height: 150, width: 100,),
          ],
        ),
      ),
    );
  }
}
