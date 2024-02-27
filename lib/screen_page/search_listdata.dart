import 'dart:html';

import 'package:flutter/material.dart';

class PageSearchData extends StatefulWidget {
  const PageSearchData({super.key});

  @override
  State<PageSearchData> createState() => _PageSearchDataState();
}

class _PageSearchDataState extends State<PageSearchData> {
  List<String> listDevice = [
    'Iphone',
    'Android',
    'Tab',
    'Mac',
    'Laptop',
    'Ipad',
    'Apple Watch',
  ];

  bool isCari = true;
  List<String>  filterData = [];
  TextEditingController txtCari = TextEditingController();

  _PageSearchDataState(){
    txtCari.addListener(() {
      if(txtCari.text.isEmpty){
        setState(() {
          isCari = true;
          txtCari.text = "";
        });
      }else{
        setState(() {
          isCari = false;
          txtCari.text != "";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search List'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding:  EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: txtCari,
              decoration: InputDecoration(
                hintText: "Search",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.green.withOpacity(0.1)
              ),
            ),
            isCari ? Expanded(
              child: ListView.builder(
                itemCount: listDevice.length,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text(listDevice[index]),
                  );
                },
              ),
            ) : CreateFilterList()
          ],
        ),
      ),
    );
  }

  Widget CreateFilterList(){
    filterData = [];
    for(int i = 0; i< listDevice.length; i++){
      var item = listDevice[i];
      if(item.toLowerCase().contains(txtCari.text.toLowerCase())){
        filterData.add(item);
      }
    }
    return HasilSearch();
  }

  Widget HasilSearch(){
    return Expanded(
      child: ListView.builder(
        itemCount: filterData.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(filterData[index]),
          );
        },
      ),
    );
  }
}
