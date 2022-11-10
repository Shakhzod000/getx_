import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_/controller/get_controller.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
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
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              margin: const EdgeInsets.all(10),
              height: 100,
              width: double.infinity,
              child: Center(
                child: Text(
                  "X value " + controller.x.toString(),
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
            Obx(
              () => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                margin: const EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Y value " + controller.y.value.toString(),
                    style: const TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
            Obx(
              () => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                margin: const EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "Total X Y " + controller.z.toString(),
                    style: const TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.incrementY();
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                margin: const EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "increment Y",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.decrementY();
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                margin: const EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "decrement Y",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.totalXY();
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                margin: const EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "Total X + Y",
                    style: TextStyle(fontSize: 25, color: Colors.white),
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
