
// class Person{
//   String name='张三';
//   int age=20; 
//   //默认构造函数
//   Person(){
//     print('这是构造函数里面的内容  这个方法在实例化的时候触发');
//   }
//   void printInfo(){   
//     print("${this.name}----${this.age}");
//   }
// }

//张三  李四  王五

// class Person{
//   String name;
//   int age; 
//   //默认构造函数
//   Person(String name,int age){
//       this.name=name;
//       this.age=age;
//   }
//   void printInfo(){   
//     print("${this.name}----${this.age}");
//   }
// }


class Person{
  String name;
  int age; 
  //默认构造函数的简写
  Person(this.name,this.age);
  void printInfo(){   
    print("${this.name}----${this.age}");
  }
}


void main(){
  
  Person p1=new Person('张三',20);
  p1.printInfo();


  Person p2=new Person('李四',25);
  p2.printInfo();

}