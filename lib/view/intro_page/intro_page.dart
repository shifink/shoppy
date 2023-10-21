import 'package:flutter/material.dart';
import 'package:shopping_cart/utils/colors.dart';
import 'package:shopping_cart/view/home_page/home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mycolors,
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                  width: 300,
                  child: Text(
                    "Define Yourself in your unique way.",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 60,color: Colors.white),
                  )),
            ),
            Positioned(
                right: 2,
                bottom: 0,
                child: Container(
                    height: 550,
                    width: 300,
                    child: Image(
                      image: AssetImage("assets/images/inro-removebg.png"),
                      fit: BoxFit.cover,
                    ))),
            Positioned(
              bottom: 30,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  width: 150,
                  height: 55,
                  child: InkWell(
                    onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),)),
                    child: Center(
                        child: Text(
                      "Get Start",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500,fontSize: 18),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
