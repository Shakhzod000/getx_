

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_/controller/get_controller.dart';
import 'package:getx_/home_page/home_page2.dart';
import 'package:getx_/second_page/secon_page_two.dart';
import 'package:getx_/second_page/third_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<TapController>(
              builder: (_) =>
              Container(
                   decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue
                  ),
                  margin: const EdgeInsets.all(10),
                  height: 100,
                  width: double.infinity,
                  child: Center(
                    child:   Text(controller.x.toString(),
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white
                    ),
                    ),
                  ),
                ),
            ),
            GestureDetector(
              onTap: (){
                controller.incrementX();
              },
              child: Container(
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
                ),
                margin: const EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                child: const Center(
                  child:   Text( 'Tap',
                  style:  TextStyle(
                    fontSize: 25,
                    color: Colors.white
                  ),
                  ),
                ),
              ),
            ),
              GestureDetector(
              onTap: (){
                Get.to(()=> const SeconHomePage());
              },
              child: Container(
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
                ),
                margin:const  EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                child:const Center(
                  child:   Text('Go to second homePage2',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                  ),
                  ),
                ),
              ),
            ),
              GestureDetector(
              onTap: (){
                Get.to(() => const SecondPageTwo());
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
                ),
                margin: const EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                child:const Center(
                  child:   Text('Wrap',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white
                  ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}