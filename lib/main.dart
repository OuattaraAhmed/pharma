import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('MapBox')),
        body: new FlutterMap(
            options: new MapOptions(
                center: new LatLng(27.175002, 78.0421170902921), minZoom: 17.0),
            layers: [
              new TileLayerOptions(
                  urlTemplate:
                  "https://api.mapbox.com/styles/v1/ohjsamuel/ckgu80kny29771an2xnypsfum/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoib2hqc2FtdWVsIiwiYSI6ImNrZ3U3ZzJ5NjBpc3cycnAwczdzNjJudW8ifQ.HRp7aAjEf9lVf3iQm_rj-g",
                  additionalOptions: {
                    'accessToken':
                    'pk.eyJ1Ijoib2hqc2FtdWVsIiwiYSI6ImNrZ3U3ZzJ5NjBpc3cycnAwczdzNjJudW8ifQ.HRp7aAjEf9lVf3iQm_rj-g',
                    'id': 'mapbox.mapbox-streets-v7'
                  }),
            ])
    );
  }
}
 