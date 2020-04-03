import 'package:flutter/material.dart';
//import 'bmi.dart';
//import 'package:flutter/cupertino.dart';

class MyProfil extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return
    new Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: new AppBar(
          backgroundColor: Colors.blue,
          title: new Center(
            child: new Text("About Me"),
          )
      ),

     body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    //alignment: Alignment.center,
                    child:
                    Image.asset('assets/aboutme.jpeg',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                 
              Text(
                "Komang Dian Ary Kristiadi", style: TextStyle(color: Colors.white, fontSize: 20.0, height: 2.0, fontWeight: FontWeight.bold,),),
              Text(
                "Teknik Informatika",style: TextStyle(color: Colors.white, fontSize: 15.0, height: 1.0,),),

              Card(
                margin: EdgeInsets.only(top: 40.0),
                child: Row(
                  children:<Widget> [
                    Expanded(
                      child: Card(
                          color: Colors.lightGreenAccent,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Column (
                            children: <Widget>[Icon(Icons.my_location, size: 110, color: Colors.grey,),
                              Text('Singaraja',style: TextStyle(color: Colors.grey, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],
                          )
                      ),
                    ),

                    Expanded(
                      child: Card(
                          color: Colors.deepOrangeAccent,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0,),
                          child: Column (
                            children: <Widget>[Icon(Icons.home, size: 110, color: Colors.white,),
                              Text('Buleleng',style: TextStyle(color: Colors.white, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],
                          )
                      ),
                    )
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.only(top: 10.0),
                child: Row(
                  children:<Widget> [
                    Expanded(
                      child: Card(
                          color: Colors.yellow,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Column (
                            children: <Widget>[Icon(Icons.fastfood, size: 110, color: Colors.blue,),
                              Text('FastFood',style: TextStyle(color: Colors.blue, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],
                          )
                      ),
                    ),

                    Expanded(
                      child: Card(
                          color: Colors.lightBlueAccent,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0,),
                          child: Column (
                            children: <Widget>[Icon(Icons.location_city, size: 110, color: Colors.yellow),
                              Text('Undiksha',style: TextStyle(color: Colors.yellow, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],
                          )
                      ),
                    )
                  ],
                ),
              ),
                 ] ),
      ),
      );
  }
}