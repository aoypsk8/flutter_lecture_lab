import 'package:flutter/material.dart';
import 'package:new_1/ListView_GridView/card_list.dart';
import 'package:new_1/ListView_GridView/grid.dart';
import 'package:new_1/ListView_GridView/model_list_grid.dart';

class MainGridList extends StatefulWidget {
  const MainGridList({Key? key}) : super(key: key);

  @override
  State<MainGridList> createState() => _MainGridListState();
}

class _MainGridListState extends State<MainGridList> {
  List<dynamic> booklist = [
    {
      'title': 'Book Programming: (For Beginner, aoy phongsakoun)',
      'img':
          'https://th.bing.com/th/id/OIP.WEh-huEEvBRopdZAEPQDmQHaKc?pid=ImgDet&rs=1',
      'subdata': {
        'category1': {
          'title': 'C Programming',
          'img':
              'https://th.bing.com/th/id/OIP.WEh-huEEvBRopdZAEPQDmQHaKc?pid=ImgDet&rs=1',
          'year': 2017,
        },
        'category2': {
          'title':
              'Core Java ',
          'img':
              'https://th.bing.com/th/id/OIP.rM8wR0w4vqVnpeUXp8uRzgHaJd?pid=ImgDet&rs=1',
          'year': 2019,
        },
        'category3': {
          'title': 'The Python ',
          'img':
              'https://th.bing.com/th/id/OIP.1AJSRkONXap-dJLVSC0YYgAAAA?pid=ImgDet&rs=1',
          'year': 2018,
        },
        'category4': {
          'title':
              'R ',
          'img':
              'https://th.bing.com/th/id/OIP.ud-8klePKT2G6NUe98bt5QHaKG?pid=ImgDet&rs=1',
          'year': 2017,
        },
      },
    },
    {
      'title': 'Ice cream ',
      'img':
          'https://cdn.pixabay.com/photo/2016/03/23/15/00/ice-cream-1274894_640.jpg',
      'subdata': {
        'category1': {
          'title': 'Ice cream with bowl',
          'img':
              'https://cdn.pixabay.com/photo/2018/08/16/22/59/ice-cream-3611698_640.jpg',
          'year': 2017,
        },
        'category2': {
          'title':
              'Bread with fruit',
          'img':
              'https://cdn.pixabay.com/photo/2016/10/31/18/14/dessert-1786311_640.jpg',
          'year': 2019,
        },
        'category3': {
          'title': 'Strawberry iceam',
          'img':
              'https://cdn.pixabay.com/photo/2017/04/18/15/10/strawberry-ice-cream-2239377_640.jpg',
          'year': 2018,
        },
        'category4': {
          'title':
              'Ice cream with bowl',
          'img':
              'https://cdn.pixabay.com/photo/2018/08/16/22/59/ice-cream-3611698_640.jpg',
          'year': 2017,
        },
        'category5': {
          'title':
              'Green Ice Cream',
          'img':
              'https://cdn.pixabay.com/photo/2016/01/11/07/18/cupcakes-1133146_640.jpg',
          'year': 2017,
        },
        'category6': {
          'title':
              'Ice Cream Cones',
          'img':
              'https://cdn.pixabay.com/photo/2021/01/18/12/49/ice-cream-5928048_640.jpg',
          'year': 2017,
        },
        'category7': {
          'title':
              'Ice Cream Cones',
          'img':
              'https://cdn.pixabay.com/photo/2015/05/17/13/12/ice-cream-770994_640.jpg',
          'year': 2017,
        },
        'category8': {
          'title':
              'Ice Cream Cones',
          'img':
              'https://cdn.pixabay.com/photo/2017/08/03/14/38/ice-cream-2576622_640.jpg',
          'year': 2017,
        },
      },
    },
    {
      'title': 'Rice && Food',
      'img':
          'https://cdn.pixabay.com/photo/2022/11/17/08/38/cake-7597588_640.jpg',
      'subdata': {
        'category1': {
          'title': 'Fire rice',
          'img':
              'https://cdn.pixabay.com/photo/2017/07/16/11/49/menu-2509046_640.jpg',
          'year': 2017,
        },
        'category2': {
          'title':
              'Fire rice crispy pork',
          'img':
              'https://cdn.pixabay.com/photo/2017/07/16/11/55/fried-2509080_640.jpg',
          'year': 2019,
        },
        'category3': {
          'title': 'Fruit Rice',
          'img':
              'https://cdn.pixabay.com/photo/2017/03/20/09/07/food-2158542_640.jpg',
          'year': 2018,
        },
        'category4': {
          'title':
              'rice',
          'img':
              'https://cdn.pixabay.com/photo/2019/01/22/15/57/onigiri-3948400_640.jpg',
          'year': 2017,
        },
        'category5': {
          'title':
              'Shrimp with sprout beem',
          'img':
              'https://cdn.pixabay.com/photo/2017/08/10/08/39/snow-crab-2620060_1280.jpg',
          'year': 2017,
        },
      },
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: booklist.length,
        itemBuilder: (context, index) => CardList(
              fmodel:
                  listModel(booklist[index]['title'], booklist[index]['img']),
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Grid_list(
                    bookData: booklist[index],
                  ),
                ),
              ),
            ));
  }
}
