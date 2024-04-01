import 'package:flutter/material.dart';

class AdDisplay extends StatelessWidget {
  final Map<String, dynamic> adInfo;
  const AdDisplay({super.key, required this.adInfo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 179,
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(14)),
        ),
        child: Text("${adInfo['id'].toString()}. ${adInfo['description']}"),
      ),
    );
  }
}
