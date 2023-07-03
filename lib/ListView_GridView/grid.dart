import 'package:flutter/material.dart';
import 'package:new_1/ListView_GridView/card_grid.dart';
import 'package:new_1/ListView_GridView/grid_detail.dart';
import 'package:new_1/ListView_GridView/model_grid.dart';
import 'package:new_1/ListView_GridView/model_list_grid.dart';

class Grid_list extends StatefulWidget {
  final dynamic bookData;
  const Grid_list({Key? key, this.bookData}) : super(key: key);

  @override
  State<Grid_list> createState() => _Grid_listState();
}

class _Grid_listState extends State<Grid_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.bookData['title']),
        backgroundColor: Color.fromARGB(189, 52, 255, 167),
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
            mainAxisExtent: 200,
          ),
          itemCount: widget.bookData.length,
          itemBuilder: (context, index) {
            // data['subdata'][0]['img']
            final subdata = widget.bookData['subdata'];
            return card_grid(
              fmodel: gridModel(subdata[index]['title'], subdata[index]['img'], subdata[index]['year'].toString()),
              //fmodel: listModel(searchResults[index]['title'], searchResults[index]['img']),
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Grid_Detail(
                      fmodel: gridModel(subdata[index]['title'], subdata[index]['img'], subdata[index]['year'].toString()),
                      ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
