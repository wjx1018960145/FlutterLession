/*

面向对象的三大特性：封装 、继承、多态


Dart中的类的继承：  
    1、子类使用extends关键词来继承父类
    2、子类会继承父类里面可见的属性和方法 但是不会继承构造函数
    3、子类能复写父类的方法 getter和setter

*/

class Person {
  String name;
  num age; 
  Person(this.name,this.age);
  Person.xxx(this.name,this.age);
  void printInfo() {
    print("${this.name}---${this.age}");  
  }
}


class Web extends Person{
  String sex;
  Web(String name, num age,String sex) : super.xxx(name, age){
    this.sex=sex;
  }
  run(){
   print("${this.name}---${this.age}--${this.sex}");  
  }
  
}

main(){ 

  // Person p=new Person('李四',20);
  // p.printInfo();

  // Person p1=new Person('张三',20);
  // p1.printInfo();


  Web w=new Web('张三', 12,"男");

  w.printInfo();

  w.run();

}