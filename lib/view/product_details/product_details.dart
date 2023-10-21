import 'package:flutter/material.dart';

import '../../utils/image_database.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
        ),
        title: Center(
            child: Text("Details",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 20))),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                      width: 250,
                      height: 350,
                      color: Colors.amber,
                      child: Image.asset(
                        "assets/images/images (1).jpeg",
                        fit: BoxFit.cover,
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 200),
                    child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Icon(Icons.favorite_border)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Regular fit polo",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 18,
                ),
                Text("4.5/5", style: TextStyle(fontWeight: FontWeight.w700)),
                Text("(45 reviews)",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 166, 166, 164)))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(pdetails,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 166, 166, 164))),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Choose", style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20)),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 150,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: const Color.fromARGB(255, 146, 146, 146))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  Text("0"),
                  IconButton(
                      onPressed: () {}, icon: Center(child: Icon(Icons.minimize_sharp))),
                ],
              ),
            ),
          ],
        ),
      ),

      
      bottomSheet: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.center,
          width: double.infinity,
          height: 80,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 225, 225, 225),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(top: 15,start:5 ,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Prise",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 166, 166, 164))),
                    Text(
                      "PKR 234",
                      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                    ),
                    
                  ],
                ),
              ),
              InkWell(
                // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AddtoCart(),)),
                child: Container(
                          width: 140,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.local_mall_outlined,color: Colors.white,),
                              Text("Add to Cart",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,),)
                            ],
                          )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
