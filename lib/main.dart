import 'dart:core';
import 'dart:typed_data';
import 'package:excel/excel.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  get fileName => null;
  /*String _ex = "name";*/

  Future<void> readExcelFile(String fileName) async {

    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference animalsCollection =
        FirebaseFirestore.instance.collection('animalsCollection');
   /* animalsCollection.add({'name': '$_ex'});*/


    ByteData data = await rootBundle.load("assets/Animals.xlsx");
    var bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    var excel = Excel.decodeBytes(bytes);

    for (var table in excel.tables.keys) {
      for(var row in excel.tables[table]?.rows ?? []){
        animalsCollection.add({'name': row});
      }
     /* Map<int, List<String>> mp = Map<int, List<String>>();*/
      /*Map<int, List<String>> mp = {};*/
     /* int? cols = excel.tables[table]?.maxCols;
      print(excel.tables[table]?.rows.toString());*/
      /*int? rows = excel.tables[table]?.maxRows;*/
      /*for(var row in excel.tables[table]?.rows ?? []){
        for(int j=1; j<=cols!; j++){
          mp[j]?.add(row[j - 1]);
        }
      }*/
    }
  }
    /*for (var table in excel.tables.keys) {
      Map<int, List<String>> mp = Map<int, List<String>>();
      *//*Map<int, List<String>> mp = {};*//*
      int? cols = excel.tables[table]?.maxCols;
      for (var row in excel.tables[table]?.rows ?? []) {
        for (int j = 1; j <= cols!; j++) {
          mp[j]?.add(row[j - 1]);
          print(mp);
        }
      }
    }*/



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Verileri Yakala - Yazdır'),
      ),
      body: new Center(
        child: new ElevatedButton(
          onPressed: () => {readExcelFile(fileName)},
          child: new Text('verileri konsola yazdır'),
        ),
      ),
    );
  }
}

/*
class MyApp extends StatelessWidget{
  String mesaj = "Excelden gelen veriler!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(mesaj),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Text("veri1"),
                Text("veri2"),
                Text("veri3"),
              ],
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text("deneme"),
              onPressed: (){
                var alert = AlertDialog(
                  title: Text("Veritabanı Hazır"),
                  content: Text("Veriler Aktarıldı"),
                );

                showDialog(context: context, builder: (BuildContext context) => alert);
              },
            ),
          ),
        ],
      )
    );
  }

}
*/
