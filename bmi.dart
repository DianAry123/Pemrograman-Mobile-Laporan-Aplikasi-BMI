//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';
import 'about_me.dart';


class InputBMI extends StatefulWidget {
  @override
  _InputBMIState createState() => new _InputBMIState();
}

class _InputBMIState extends State<InputBMI> {
  int tinggi = 0;
  int berat = 0;
  int tahun = 0;
  int tanggal = 0;
  int bulan= 0;

  String _jk="";

  void _pilihJk(String value){
    setState(() {
      _jk=value;
    });
  }

  var nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          appBar: new AppBar(
              leading: new Icon(Icons.show_chart,
                color: Colors.white,
              ),
              
              title: Text('MENGHITUNG BMI'),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child:
                    Image.asset('assets/bmi.jpg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),

                  Container(
                    padding: new EdgeInsets.all(10.0),
                    child: new Column(
                      children: <Widget>[
                        new TextField(
                          controller: nama,
                          decoration: new InputDecoration(
                            hintText:"Nama Lengkap",
                            labelText: "Nama Lengkap",
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(20.0)
                            )
                          )
                        ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.all(10),
                     // color: Colors.blue[700],
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tanggal = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              decoration: new InputDecoration(
                                  labelText: "Tanggal",
                                  filled: true,
                                  border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(10.0)
                                  ),
                                  hintText: 'Hari'),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: TextField(
                              onChanged: (txt) {
                                setState(() {
                                  bulan = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              decoration: InputDecoration(
                                  labelText: "Bulan",
                                  filled: true,
                                  border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(10.0)
                                  ),
                                  hintText: 'Bulan'),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                         Expanded(
                            child: TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tahun = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 4,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                              ),
                              decoration: InputDecoration(
                                  labelText: "Tahun",
                                  filled: true,
                                  border: new OutlineInputBorder(
                                    borderRadius: new BorderRadius.circular(10.0)
                                  ),
                                  hintText: 'Tahun'),
                            ),
                          ),
                        ],
                      )),
                        new Padding(padding: new EdgeInsets.only(top: 20.0),),
                        new RadioListTile(
                          value: "Laki - Laki",
                          title: new Text("Laki - Laki"),
                          groupValue: _jk,
                          onChanged: (String value){
                            _pilihJk(value);
                          },
                          subtitle: new Text("Pilih ini jika Anda Laki-Laki"),
                        ),
                        new RadioListTile(
                          value: "Perempuan",
                          title: new Text("Perempuan"),
                          groupValue: _jk,
                          onChanged: (String value){
                            _pilihJk(value);
                          },
                          subtitle: new Text("Pilih ini jika Anda perempuan"),
                        )
                      ]
                    ),
                  ),

                  Container(
                       margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(10),
                     // color: Colors.blue[700],
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tinggi = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  suffix: Text('cm'),

                                  filled: true,
                                  hintText: 'Tinggi'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              onChanged: (txt) {
                                setState(() {
                                  berat = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  suffix: Text('kg'),
                                  filled: true,
                                  hintText: 'Berat'),
                            ),
                          ),
                        ],
                      )),

                  Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                     child: RaisedButton(
                       onPressed: () {
                         
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => BMIResult(namaLengkap: nama.text, tahunLahir: tahun, jk: _jk, tinggiBadan: tinggi, beratBadan: berat)),
                         ); 
                       },
                       
                       padding: EdgeInsets.only(top: 10, bottom: 10),
                       color: Colors.black,
                       // textColor: Colors.white,
                       child: Text(
                         'HITUNG BMI',
                         style:
                         TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),
                   Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                     child: RaisedButton(
                       onPressed: () {
                         
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => MyProfil()),
                         ); 
                       },
                       
                       padding: EdgeInsets.only(top: 10, bottom: 10),
                       color: Colors.black,
                       // textColor: Colors.white,
                       child: Text(
                         'About me',
                         style:
                         TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),



                ],
              ),
            ),
          bottomNavigationBar: BottomAppBar(
            //color: Colors.transparent,
            child: Container(
              height: 60,
              color: Colors.black54,
              alignment: Alignment.center,
              child: Text(
                'Indeks Massa Tubuh',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            //elevation: 0,
          ),
        );
  }
}