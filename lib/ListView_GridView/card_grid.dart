import 'package:flutter/material.dart';
import 'package:new_1/ListView_GridView/model_grid.dart';


class card_grid extends StatefulWidget {
  final VoidCallback press;
  final gridModel fmodel;
  const card_grid({Key? key, required this.press, required this.fmodel}) : super(key: key);

  @override
  State<card_grid> createState() => _card_gridState();
}

class _card_gridState extends State<card_grid> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.press,
      child: Container(
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              width: double.infinity,
              child: Image.network(
                widget.fmodel.img,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.fmodel.title),
            ))
          ],
        ),
      ),
    );
  }
}