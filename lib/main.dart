import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodApp(),
    );
  }
}

class FoodApp extends StatefulWidget {
  @override
  _FoodAppState createState() => _FoodAppState();
}

class _FoodAppState extends State<FoodApp> {
  List<String> imgUrl = [
    "https://lh3.googleusercontent.com/-G6DqYUUefb8/YFFVtLbspOI/AAAAAAAAIfM/yheYcqq2Jkwu7WBNJ9zeQ6UVRw5C-AsKACNcBGAsYHQ/a3625622-c3fe-4984-91b5-37cfbcc04805.jpeg",
    "https://lh3.googleusercontent.com/-OyDfCofwxFg/YFFVlUvqfKI/AAAAAAAAIfA/xM0SUB92Ry483Q1THvOT41y4a7eRVB7dwCNcBGAsYHQ/sirloinsteakwithchun_90288_16x9.jpg",
    "https://lh3.googleusercontent.com/-gbKoy0FnlAo/YFFVtH5kItI/AAAAAAAAIfI/cP_h-F8ltmIcQYd4MC3-I5AOE27Cqfp3QCNcBGAsYHQ/6b90522a5dcce7de63cc3ea4161ae88b.jpg",
    "https://lh3.googleusercontent.com/-KE6fwsp5ywQ/YFFVlc31IeI/AAAAAAAAIe8/FzNWH58OQVYuL-7kxpcKSDpCiHkzLtGbwCNcBGAsYHQ/8bd605fc-08c3-4c8c-b294-a744e1553020.jpeg",
    "https://lh3.googleusercontent.com/-U54LeD3RRn8/YFFVlRxnDMI/AAAAAAAAIfE/4munbefbjDIuqy-JlPiICAYct3EZGCH6wCNcBGAsYHQ/5fba747cef43d.jpg",
    "https://lh3.googleusercontent.com/-p8KhzegaY1Y/YFFWsUErbWI/AAAAAAAAIfk/h2exzA7PExQSJ21mk7PT8ZAe2AOq15FdwCNcBGAsYHQ/photo.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      appBar: AppBar(
        backgroundColor: Color(0xFFfcfcfc),
        title: Text(
          "Kuliner Nusantara",
          style: TextStyle(
            color: Color(0xFFfc6a26),
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ayo Makan! \nPesan Makanan Segera",
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0x55d2d2d2),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search... ",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20.0),
                    ),
                  )),
                  RaisedButton(
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    color: Color(0xFFfc6a26),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                children: [
                  foodCard(imgUrl[0], "Mie Goreng Mantap Djiwa", "10.000"),
                  foodCard(imgUrl[1], "Morning Steak", "35.000"),
                  foodCard(imgUrl[2], "Kangkung", "9.000"),
                  foodCard(imgUrl[3], "Gudeg Jogjakarta", "18.000"),
                  foodCard(imgUrl[4], "Nasi Goreng Ashiapp ", "20.000"),
                  foodCard(imgUrl[5], "Gado-gado Batavia", "15.000"),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFfcfcfc),
        elevation: 0.0,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.cyanAccent[700],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            title: Text("Our Shop"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorite"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
        ],
      ),
    );
  }
}

Widget foodCard(String img, String title, String price) {
  return Container(
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              img,
              height: 100.0,
            ),
            SizedBox(
              height: 8.0,
            ),
            Flexible(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    " Rp. ${price}",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
