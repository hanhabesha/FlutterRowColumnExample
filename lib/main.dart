// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // It is the root widget of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Raw and Column',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: MyHomePage(title: 'Raw and column'),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   MyHomePage({required this.title});
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Product List")),
//       body: ListView(
//         padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
//         children: <Widget>[
//           ProductBox(
//               name: "iPhone",
//               description:
//                   "iPhone that use Apple's iOS mobile operating system",
//               price: 55000,
//               image: "iphone.jpg"),
//           ProductBox(
//               name: "Android",
//               description:
//                   "high-tech smartphone that runs on the Android operating system",
//               price: 10000,
//               image: "android.jpg"),
//           ProductBox(
//               name: "Tablet",
//               description:
//                   " portable computer that uses a touchscreen as its primary input device.",
//               price: 25000,
//               image: "tablet.jpg"),
//           ProductBox(
//               name: "Laptop",
//               description:
//                   " a small personal computer. They are designed to be more portable ",
//               price: 35000,
//               image: "laptop.png"),
//           ProductBox(
//               name: "Desktop",
//               description:
//                   " a personal computer designed for regular use at a single location",
//               price: 10000,
//               image: "desktop.jpg"),
//         ],
//       ),
//     );
//   }
// }

// class ProductBox extends StatelessWidget {
//   ProductBox(
//       {required this.name,
//       required this.description,
//       required this.price,
//       required this.image});
//   final String name;
//   final String description;
//   final int price;
//   final String image;

//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(2),
//       height: 110,
//       child: Card(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             Image.asset("assets/" + image),
//             Expanded(
//               child: Container(
//                 padding: EdgeInsets.all(5),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: <Widget>[
//                     Text(this.name,
//                         style: TextStyle(fontWeight: FontWeight.bold)),
//                     Text(this.description),
//                     Text("Price: " + this.price.toString()),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row Example',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Example"),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.green),
              child: Text(
                "first name",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.green),
              child: Text(
                "middle name",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.green),
              child: Text(
                "surname",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            )
          ]),
    );
  }
}
