import 'package:day_03/home/gift.dart';
import 'package:flutter/material.dart';

class GiftItem extends StatelessWidget {
  const GiftItem({super.key, required this.gift});

  final Gift gift;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(gift.name),
      tileColor: Colors.yellow,
      leading: const Icon(Icons.redeem),
    );
  }
}
