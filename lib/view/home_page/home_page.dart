import 'package:flutter/material.dart';
import 'package:shopping_cart/utils/colors.dart';

import '../../utils/image_database.dart';
import '../product_details/product_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> mylist = ["All", "Men", "Woman", "kids", "Trend", "Fasion"];
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          leadingWidth: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Discover",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add,
                color: Colors.black,
              ),
            )
          ]),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          children: [
                            Icon(Icons.search), 
                            SizedBox(width: 15,),
                            Text("Seach anything")]),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      color: Colors.black,
                    ),
                    child: Icon(
                      Icons.filter_list_rounded,
                      color: Mycolors,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 55,
            child: ListView.builder(
              itemCount: mylist.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Container(
                  height: 50,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: index == 0 ? Colors.black : Mycolors),
                  child: Text(
                    mylist[index],
                    style: TextStyle(
                        color: index == 0 ? Colors.white : Colors.black),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 300,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) => InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetails(),
                          )),
                      child: Container(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                    width: 200,
                                    height: 250,
                                    child: Image(
                                      image: AssetImage(images[index]),
                                      fit: BoxFit.cover,
                                    )),
                                Padding(
                                  padding: EdgeInsets.only(top: 5, left: 150),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                      ),
                                      child: Icon(Icons.favorite_border)),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Regular fit polo",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 15),
                            ),
                            Text(
                              "PKR 1,110-52%",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  color: Color.fromARGB(255, 111, 111, 110)),
                            )
                          ],
                        ),
                      ),
                    )),
          )),
          Container()
          
        ],
      )),
    );
  }
}
