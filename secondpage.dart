import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  String nama;
  String dekripsi;
  String harga;
  String jenis;
  String pengiriman;
  String retur;

 SecondPage({super.key, required this.nama, required this.dekripsi, required this.harga, required this.jenis, required this.pengiriman, required this.retur});

  @override
  Widget build (BuildContext context){
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Container(
              padding: EdgeInsets.all(15),
              child: Text("Nama barang: " nama),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text("Deskripsi: " dekripsi),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text("Harga: " harga),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text("Jenis barang: " jenis),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text("Pengiriman dalam kota saja: " pengiriman),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text("Menerima retur: " retur),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text("Dikerjakan oleh: 6701213029 - Putri Kamaliyah K D"),
            ),
          ]
      )
    );
  }
}