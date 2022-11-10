

import 'package:get/get.dart';

class TapController extends GetxController{
 
 int _x = 0;
 RxInt _y = 0.obs;
 RxInt _z = 0.obs;

RxInt get z => _z;
RxInt get y => _y;
 int get x => _x;

void totalXY(){
  _z.value = _x+_y.value;
}

 void incrementX(){
  _x++;
  update();
 } 

 void decrementX(){
  _x--;
  update();
 }

 void incrementY (){
  _y.value++;
 } 
 void decrementY (){
  _y.value--;
 } 


}