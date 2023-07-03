import 'package:flutter/material.dart';
import 'package:new_1/ListView_GridView/model_grid.dart';

class Grid_Detail extends StatefulWidget {
  final gridModel fmodel;
  const Grid_Detail({
    Key? key,
    required this.fmodel,
  }) : super(key: key);

  @override
  State<Grid_Detail> createState() => _Grid_DetailState();
}

class _Grid_DetailState extends State<Grid_Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
              ),
              child: Image.network(
                widget.fmodel.img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(widget.fmodel.title),
          Text(widget.fmodel.year),
        ],
      ),
    );
  }
}
