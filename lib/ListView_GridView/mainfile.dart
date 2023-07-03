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
      'subdata': [
        {
          'title': 'C Programming',
          'img':
              'https://th.bing.com/th/id/OIP.WEh-huEEvBRopdZAEPQDmQHaKc?pid=ImgDet&rs=1',
          'year': 2017,
        },
        {
          'title': 'Core Java ',
          'img':
              'https://th.bing.com/th/id/OIP.rM8wR0w4vqVnpeUXp8uRzgHaJd?pid=ImgDet&rs=1',
          'year': 2019,
        },
        {
          'title': 'The Python ',
          'img':
              'https://th.bing.com/th/id/OIP.1AJSRkONXap-dJLVSC0YYgAAAA?pid=ImgDet&rs=1',
          'year': 2018,
        },
        {
          'title': 'R ',
          'img':
              'https://th.bing.com/th/id/OIP.ud-8klePKT2G6NUe98bt5QHaKG?pid=ImgDet&rs=1',
          'year': 2017,
        },
      ]
    },
    {
      'title': 'Ice cream ',
      'img':
          'https://cdn.pixabay.com/photo/2016/03/23/15/00/ice-cream-1274894_640.jpg',
      'subdata': [
        {
          'title': 'Ice cream with bowl',
          'img':
              'https://cdn.pixabay.com/photo/2018/08/16/22/59/ice-cream-3611698_640.jpg',
          'year': 2017,
        },
        {
          'title': 'Bread with fruit',
          'img':
              'https://cdn.pixabay.com/photo/2016/10/31/18/14/dessert-1786311_640.jpg',
          'year': 2019,
        },
        {
          'title': 'Strawberry iceam',
          'img':
              'https://cdn.pixabay.com/photo/2017/04/18/15/10/strawberry-ice-cream-2239377_640.jpg',
          'year': 2018,
        },
        {
          'title': 'Ice cream with bowl',
          'img':
              'https://cdn.pixabay.com/photo/2018/08/16/22/59/ice-cream-3611698_640.jpg',
          'year': 2017,
        },
        {
          'title': 'Green Ice Cream',
          'img':
              'https://cdn.pixabay.com/photo/2016/01/11/07/18/cupcakes-1133146_640.jpg',
          'year': 2017,
        },
        {
          'title': 'Ice Cream Cones',
          'img':
              'https://cdn.pixabay.com/photo/2021/01/18/12/49/ice-cream-5928048_640.jpg',
          'year': 2017,
        },
        {
          'title': 'Ice Cream Cones',
          'img':
              'https://cdn.pixabay.com/photo/2015/05/17/13/12/ice-cream-770994_640.jpg',
          'year': 2017,
        },
        {
          'title': 'Ice Cream Cones',
          'img':
              'https://cdn.pixabay.com/photo/2017/08/03/14/38/ice-cream-2576622_640.jpg',
          'year': 2017,
        },
      ]
    },
    {
      'title': 'Rice && Food',
      'img':
          'https://cdn.pixabay.com/photo/2022/11/17/08/38/cake-7597588_640.jpg',
      'subdata': [
        {
          'title': 'Fire rice',
          'img':
              'https://cdn.pixabay.com/photo/2017/07/16/11/49/menu-2509046_640.jpg',
          'year': 2017,
        },
        {
          'title': 'Fire rice crispy pork',
          'img':
              'https://cdn.pixabay.com/photo/2017/07/16/11/55/fried-2509080_640.jpg',
          'year': 2019,
        },
        {
          'title': 'Fruit Rice',
          'img':
              'https://cdn.pixabay.com/photo/2017/03/20/09/07/food-2158542_640.jpg',
          'year': 2018,
        },
        {
          'title': 'rice',
          'img':
              'https://cdn.pixabay.com/photo/2019/01/22/15/57/onigiri-3948400_640.jpg',
          'year': 2017,
        },
        {
          'title': 'Shrimp with sprout beem',
          'img':
              'https://cdn.pixabay.com/photo/2017/08/10/08/39/snow-crab-2620060_1280.jpg',
          'year': 2017,
        },
      ]
    },
  ];

  TextEditingController _ctrlSearch = TextEditingController();
  List<dynamic> searchResults = [];

  @override
  void initState() {
    super.initState();
    searchResults = List.of(booklist);
  }

  void search(String query) {
    setState(() {
      searchResults = booklist
          .where((book) =>
              book['title'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        controller: _ctrlSearch,
                        onChanged: (value) => search(value),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here....",
                        ),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () async {},
                      child: const Icon(
                        Icons.search,
                        size: 27,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: searchResults.length,
                  itemBuilder: (context, index) => Container(
                        child: CardList(
                          fmodel: listModel(
                              searchResults[index]['title'], searchResults[index]['img']),
                          press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Grid_list(
                                bookData: searchResults[index],
                              ),
                            ),
                          ),
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
