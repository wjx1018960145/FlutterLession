/*
Datr中的多态：
    允许将子类类型的指针赋值给父类类型的指针, 同一个函数调用会有不同的执行效果 。

    子类的实例赋值给父类的引用。
    
    多态就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类有不同的表现。

*/


abstract class Animal{
  eat();   //抽象方法 
}

class Dog extends Animal{
  @override
  eat() {
     print('小狗在吃骨头');
  }
  run(){
    print('run');
  }
}
class Cat extends Animal{
  @override
  eat() {   
    print('小猫在吃老鼠');
  }
  run(){
    print('run');
  }
}

main(){

  // Dog d=new Dog();
  // d.eat();
  // d.run();


  // Cat c=new Cat();
  // c.eat();




  Animal d=new Dog();

  d.eat();

 

  Animal c=new Cat();

  c.eat();

 


}