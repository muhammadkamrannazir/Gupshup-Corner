// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Locator extends StatelessWidget {
  const Locator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Completer<GoogleMapController> controllerGoogleMap = Completer();
    GoogleMapController? newGoogleMapController;

    final CameraPosition kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.4746,
    );

    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   elevation: 2,
      //   tooltip: 'Locator',
      //   backgroundColor: Colors.blue,
      //   child:
      //       // Text('Locate', style: TextStyle(fontWeight: FontWeight.bold)),
      //       Icon(Icons.location_pin),
      //   onPressed: () {},
      // ),
      body: SafeArea(
        child: Stack(
          children: [
            GoogleMap(
              mapType: MapType.normal,
              myLocationEnabled: true,
              initialCameraPosition: kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                controllerGoogleMap.complete(controller);
                newGoogleMapController = controller;
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      // width: 210,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        label: Text(
                          'Share',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      height: 70,
                      // width: 210,
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(30)),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.accessibility_new,
                          color: Colors.white,
                        ),
                        label: Text(
                          'Access',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// SafeArea(
//         child: Column(
//           children: [
//           ],
//         ),
//       ),