
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_/second_page/third_page.dart';

class SecondPageTwo extends StatelessWidget {
  const SecondPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
       leading: IconButton(
        onPressed: (){
          Get.back();
        },
        icon: const Icon(Icons.arrow_back_ios),
       ),
      ),
      body: Container(
        color: Colors.white,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             GestureDetector(
                onTap: (){
                  Get.to(() => const ThirdPage());
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
                    child:   Text('Go to ThirdPage',
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