// Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(
//                 16.0,
//               ),
//               color: Color.fromARGB(173, 0, 255, 13),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 ClipRRect(
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(16.0),
//                     topRight: Radius.circular(16.0),
//                   ),
//                   child: Image.network(
//                     "${booklist[index]['img']}",
//                     height: 170,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "${booklist[index]['title']}",
//                         style: Theme.of(context).textTheme.subtitle1!.merge(
//                               const TextStyle(
//                                 fontWeight: FontWeight.w700,
//                               ),
//                             ),
//                       ),
//                       const SizedBox(
//                         height: 8.0,
//                       ),
//                       Text(
//                         "Year ${booklist[index]['year']}",
//                         style: Theme.of(context).textTheme.subtitle2!.merge(
//                               TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black,
//                                   fontSize: 19),
//                             ),
//                       ),
//                       const SizedBox(
//                         height: 5.0,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               CupertinoIcons.heart,
//                             ),
//                           ),
//                           IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               CupertinoIcons.cart,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );