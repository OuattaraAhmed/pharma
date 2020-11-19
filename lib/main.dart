import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:http/http.dart' as http;
import 'package:latlong/latlong.dart';
import 'modalbottomsheet.dart';
import 'package:geolocator/geolocator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff6200ee),
        //visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {




  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Future getData() async {
  //  var url = 'http://192.168.43.230/php-mysql-flutter-crud/read.php';
  //  var response = await http.get(url);
   // return json.decode(response.body);
  //}

  //@override
  //void initState() {
   // super.initState();
  //}

//widget buttonSection = Container(
 // child: Row(
   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //children: [
      //_buildButtonColumn(Color(0xff6200ee), FontAwesomeIcons.phone, 'CALL'),
      //_buildButtonColumn(),
    // ],
  //  ),
// )
 // int _counter = 0;
 // Geolocator _geolocator;
 // Position _position;
 // @override
  //void initState() {
  //  super.initState();
  //  _geolocator = Geolocator();

 //  }
  //void updateLocation() async {
 //   try {
  //    Position newPosition = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
    //      .timeout(new Duration(seconds: 5));
   //   setState(() {
    //    _position = newPosition;

    //  });
    //} catch (e) {
     // print('Error: ${e.toString()}');
    // }
 //  }
  // void _incrementCounter() {
  //  setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    //  _counter++;
   // });
   // }





  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft), onPressed: (){
          }),
            title: new Text('PHARMACIE')),
        body: new FlutterMap(
            options: new MapOptions(
                center: new LatLng(5.31767,-4.08999), minZoom: 17.0),
            layers: [
              new TileLayerOptions(
                  urlTemplate:
                  "https://api.mapbox.com/styles/v1/ohjsamuel/ckgu80kny29771an2xnypsfum/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoib2hqc2FtdWVsIiwiYSI6ImNrZ3U3ZzJ5NjBpc3cycnAwczdzNjJudW8ifQ.HRp7aAjEf9lVf3iQm_rj-g",
                  additionalOptions: {
                    'accessToken':
                    'pk.eyJ1Ijoib2hqc2FtdWVsIiwiYSI6ImNrZ3U3ZzJ5NjBpc3cycnAwczdzNjJudW8ifQ.HRp7aAjEf9lVf3iQm_rj-g',
                    'id': 'mapbox.mapbox-streets-v7'
                  }),



               MarkerLayerOptions(
                 markers: [
                   Marker(
                     width: 80.0,
                     height: 80.0,
                     point: LatLng(5.31767,-4.08999),
                     builder: (ctx)=>
                         Container (
                           child: IconButton(
                             icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                             color: Color(0xff6200ee),
                             iconSize: 45.0,
                             onPressed: (){
                               showModalBottomSheet(
                                   context: context,
                                   builder: (builder){
                                     return Container(
                                       color: Colors.white,
                                       child: new Center(
                                         child: new Text("Bottom sheet"),
                                       ),
                                     );
                                   },
                                   );
                             },
                           ),
                         ),

                 ),],
               ),
              
            ]),


      //floatingActionButton: FloatingActionButton(
      //  onPressed: updateLocation,
      //  tooltip: 'Increment',
     //   child: Icon(Icons.add),
     // ),




    );
  }
}
