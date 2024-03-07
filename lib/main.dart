import 'dart:html';

import 'package:flutter/material.dart';
import 'package:rpl2b_project/screen_page/page_galerymovie.dart';
import 'package:rpl2b_project/screen_page/page_list_berita.dart';
import 'package:rpl2b_project/screen_page/page_list_user.dart';
import 'package:rpl2b_project/screen_page/page_movie_gallery.dart';
import 'package:rpl2b_project/screen_page/page_register.dart';
import 'package:rpl2b_project/screen_page/page_registration.dart';
import 'package:rpl2b_project/screen_page/search_listdata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const PageHome(),
      home: const PageRegisterNew(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome>  with SingleTickerProviderStateMixin{

  late TabController tabController;
  //proses do in background
  //initState : proses di background yang dilakukan view di panggil
  //state : proses di background tpi di lakukan saat perubahan view

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: tabController,
        children: const[ PageRegister(), PageMovieGallery(), PageListBerita()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          isScrollable: true,
          labelColor: Colors.green,
          unselectedLabelColor: Colors.grey,
          controller: tabController,
          tabs: const [
            Tab(
              text: "Form Registration",
              icon: Icon(Icons.input),
            ),
            Tab(
              text: "Gallery Photos",
              icon: Icon(Icons.photo_album),
            ),
            Tab(
              text: "News",
              icon: Icon(Icons.list),
            ),
          ],

        ),
      ),

    );
  }
}


class PageTabView extends StatelessWidget {
  const PageTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Page Registrasi'),
      ),

      body:  Center(
        child: Text(
          'Ini adalah Page Tab Bar Setelah di Klik'
        ),

      ),
    );
  }
}

class PageTab2 extends StatelessWidget {
  const PageTab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Ini adalah Tab Ke 2'),
    );
  }
}

