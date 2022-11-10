import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/get_controller.dart';

class SeconHomePage extends StatelessWidget {
  const SeconHomePage({super.key});

  @override
  Widget build(BuildContext context) {
  TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
       leading: IconButton(
        onPressed: (){
          Get.back();
        },
        icon:const  Icon(Icons.arrow_back_ios,),
       ),
      ),
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
                controller.decrementX();
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
                  child:   Text( 'decrement',
                  style:  TextStyle(
                    fontSize: 25,
                    color: Colors.white
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}