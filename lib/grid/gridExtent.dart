import 'package:flutter/material.dart';

class GridExtent extends StatefulWidget {
  const GridExtent({Key? key}) : super(key: key);

  @override
  State<GridExtent> createState() => _GridExtentState();
}

class _GridExtentState extends State<GridExtent> {
  List<dynamic> booklist = [
    {
      'img':
          'https://th.bing.com/th/id/OIP.WEh-huEEvBRopdZAEPQDmQHaKc?pid=ImgDet&rs=1',
    },
    {
      'img':
          'https://th.bing.com/th/id/OIP.WvGkGaFf6lwYJ03YZi7UywAAAA?pid=ImgDet&rs=1',
    },
    {
      'img':
          'https://th.bing.com/th/id/OIP.rM8wR0w4vqVnpeUXp8uRzgHaJd?pid=ImgDet&rs=1',
    },
    {
      'img':
          'https://th.bing.com/th/id/OIP.1AJSRkONXap-dJLVSC0YYgAAAA?pid=ImgDet&rs=1',
    },
    {
      'img':
          'https://th.bing.com/th/id/OIP.ud-8klePKT2G6NUe98bt5QHaKG?pid=ImgDet&rs=1',
    },
    {
      'img':
          'https://th.bing.com/th/id/OIP.5q70tq-vyy0E0ZyP-NVl2QAAAA?pid=ImgDet&rs=1',
    },
    {
      'img':
          'https://th.bing.com/th/id/OIP.5q70tq-vyy0E0ZyP-NVl2QAAAA?pid=ImgDet&rs=1',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.extent(
        maxCrossAxisExtent: 150,
        children: List.generate(booklist.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Center(child: Image.network(booklist[index]['img'])),
            ),
          );
        }),
      ),
    );
  }
}
