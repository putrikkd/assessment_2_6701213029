import 'package:flutter/material.dart';
import 'secondpage.dart';

void main() => runApp(MyApp(
));

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const HomePage(),
        ),
      );
  }
}

enum SingingCharacter { bekas, baru }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isChecked = false;
  SingingCharacter? _character = SingingCharacter.bekas;
  TextEditingController publikasi = TextEditingController();

  final nama = TextEditingController();
  final dekripsi = TextEditingController();
  final harga = TextEditingController();
  final jenis = TextEditingController();
  final pengiriman = TextEditingController();
  final retur = TextEditingController();
  

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Container(
              padding: EdgeInsets.only(top: 25, right: 25, bottom: 15, left: 25),
              child: TextField(
                controller: nama,
                style: TextStyle(),
                decoration: new InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nama Barang',
                  )
                ),
              ),
            Container(
              padding: EdgeInsets.only(right: 25, bottom: 15, left: 25),
              child: TextField(
                controller: dekripsi,
                style: TextStyle(),
                decoration: new InputDecoration(
                    border: OutlineInputBorder(),
                  labelText: 'Deskripsi',
                  )
                ),
              ),
            Container(
              padding: EdgeInsets.only(right: 25, bottom: 15, left: 25),
              child: TextField(
                controller: harga,
                style: TextStyle(),
                decoration: new InputDecoration(
                    border: OutlineInputBorder(),
                  labelText: 'Harga',
                  )
                ),
              ),
            Container(
              padding: EdgeInsets.only(right: 25, bottom: 15, left: 25),
              child: Text('Kondisi Barang')
            ),
            Column(
              children: <Widget>[
                ListTile(
                  title: const Text('Bekas'),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.bekas,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('Baru'),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.baru,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget> [
                Text(
                  'Pengiriman dalam kota saja',
                  style: TextStyle(),
                ), //Text
                SizedBox(width: 10), //SizedBox
                /** Checkbox Widget **/
                Checkbox(
                  value: this.isChecked,
                  onChanged: (bool? isChecked) {
                    setState(() {
                        this.isChecked = isChecked!;
                    });
                  },
                ),
              ]
            ),
            Row(
              children: <Widget> [
                Text(
                  'Menerima retur',
                  style: TextStyle(),
                ), //Text
                SizedBox(width: 10), //SizedBox
                /** Checkbox Widget **/
                Checkbox(
                  value: this.isChecked,
                  onChanged: (bool? isChecked) {
                    setState(() {
                        this.isChecked = isChecked!;
                    });
                  },
                ),
              ]
            ),
            Container(
                width: 370,
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('PUBLIKASIKAN'),
                  onPressed: () {
                    print(publikasi.text);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage(nama: nama.text, dekripsi: dekripsi.text, harga: harga.text, jenis: jenis.text, pengiriman: pengiriman.text, retur: retur.text)),
                    );
                  },
                )
            ),
          ]
        ),
      ),
    );
  }
}