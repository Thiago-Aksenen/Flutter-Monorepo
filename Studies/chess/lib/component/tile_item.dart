import 'package:chess/model/tile.dart';
import 'package:flutter/material.dart';

class TileItem extends StatelessWidget {
  final Tile tile;
  const TileItem({super.key, required this.tile});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      color: tile.color ? Colors.white : Colors.black,
    );
  }
}
