/*

Dart是一门使用类和单继承的面向对象语言，所有的对象都是类的实例，并且所有的类都是Object的子类

*/

class Person{
  String name="张三";
  int age=23;
  void getInfo(){
      // print("$name----$age");
      print("${this.name}----${this.age}");
  }
  void setInfo(int age){
    this.age=age;
  }

}
void main(){

  //实例化

  // var p1=new Person();
  // print(p1.name);
  // p1.getInfo();

  Person p1=new Person();
  // print(p1.name);

  p1.setInfo(28);
  p1.getInfo();
  


}