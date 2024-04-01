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
        decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(),
              top: BorderSide(),
              left: BorderSide(),
              right: BorderSide()),
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.all(Radius.circular(14)),
        ),
        child: Center(
            child:
                Text("${adInfo['id'].toString()}. ${adInfo['description']}")),
      ),
    );
  }
}
