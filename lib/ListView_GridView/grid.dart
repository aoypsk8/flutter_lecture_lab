import 'package:flutter/material.dart';
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
    final subdata = widget.bookData['subdata'];

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
          itemCount: subdata.length,
          itemBuilder: (context, index) {
            final category = subdata.values.toList()[index];
            final title = category['title'];
            final img = category['img'];
            final year = category['year'];
            return Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 170,
                    width: double.infinity,
                    child: Image.network(
                      img,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(title),
                  ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
