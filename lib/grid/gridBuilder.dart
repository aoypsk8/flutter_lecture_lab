import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GridPage extends StatefulWidget {
  const GridPage({Key? key}) : super(key: key);

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  List<dynamic> booklist = [
    {
      'img':
          'https://th.bing.com/th/id/OIP.WEh-huEEvBRopdZAEPQDmQHaKc?pid=ImgDet&rs=1'
    },
    {
      'img':
          'https://th.bing.com/th/id/OIP.WvGkGaFf6lwYJ03YZi7UywAAAA?pid=ImgDet&rs=1'
    },
    {
      'img':
          'https://th.bing.com/th/id/OIP.rM8wR0w4vqVnpeUXp8uRzgHaJd?pid=ImgDet&rs=1'
    },
    {
      'img':
          'https://th.bing.com/th/id/OIP.1AJSRkONXap-dJLVSC0YYgAAAA?pid=ImgDet&rs=1'
    },
    {
      'img':
          'https://th.bing.com/th/id/OIP.ud-8klePKT2G6NUe98bt5QHaKG?pid=ImgDet&rs=1'
    },
    {
      'img':
          'https://th.bing.com/th/id/OIP.5q70tq-vyy0E0ZyP-NVl2QAAAA?pid=ImgDet&rs=1'
    },
    {
      'img':
          'https://th.bing.com/th/id/OIP.5q70tq-vyy0E0ZyP-NVl2QAAAA?pid=ImgDet&rs=1'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 200,
                  ),
                  itemCount: booklist.length,
                  itemBuilder: (context, index) => Container(
                    child: Card(
                      child: Image.network("${booklist[index]['img']}"),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
