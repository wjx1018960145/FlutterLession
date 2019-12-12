/*
Dart和其他面向对象语言不一样，Data中没有 public  private protected这些访问修饰符合

但是我们可以使用_把一个属性或者方法定义成私有。

*/

import 'lib/Animal.dart';

void main(){
 
 Animal a=new Animal('小狗', 3);

 print(a.getName());

  a.execRun();   //间接的调用私有方法
 

}