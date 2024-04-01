import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapDisplay extends StatelessWidget {
  const MapDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: const MapOptions(
        initialCenter: LatLng(-8.548785553538057, 115.19774737666661),
        initialZoom: 9.2,
      ),
      children: [
        TileLayer(
          urlTemplate:
              'https://api.mapbox.com/styles/v1/aklasa/clucx8gp900ff01pdhr2fgp7w/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYWtsYXNhIiwiYSI6ImNsdWN4MmtkNjFjZTAycW8zcjZlczQ0OWMifQ.Ef0QWGYtgNBzQXTFVzwgtg',
          additionalOptions: const {
            'accessToken':
                'pk.eyJ1IjoiYWtsYXNhIiwiYSI6ImNsdWN4MmtkNjFjZTAycW8zcjZlczQ0OWMifQ.Ef0QWGYtgNBzQXTFVzwgtg',
            // 'id': 'mapbox://styles/aklasa/clucx8gp900ff01pdhr2fgp7w'
          },
          userAgentPackageName: 'com.example.app',
          // ),
          // RichAttributionWidget(
          //   attributions: [
          //     TextSourceAttribution(
          //       'OpenStreetMap contributors',
          //       onTap: () => launchUrl(
          //           Uri.parse('https://openstreetmap.org/copyright')),
          //     ),
          //   ],
          // ),
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: const LatLng(-8.548785553538057, 115.19774737666661),
              width: 60,
              height: 60,
              alignment: Alignment.topCenter,
              child: Icon(
                Icons.location_pin,
                color: Colors.red.shade700,
                size: 60,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
