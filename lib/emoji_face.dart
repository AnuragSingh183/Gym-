import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmojiFace extends StatelessWidget {
  final String emojiface;
  // ignore: non_constant_identifier_names
  const EmojiFace({required this.emojiface, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(12)),
      child: Text(
        emojiface,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
