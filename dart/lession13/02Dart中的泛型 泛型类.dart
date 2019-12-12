//集合List 泛型类的用法



//案例：把下面类转换成泛型类，要求List里面可以增加int类型的数据，也可以增加String类型的数据。但是每次调用增加的类型要统一


//  class PrintClass{
//       List list=new List<int>();
//       void add(int value){
//           this.list.add(value);
//       }
//       void printInfo(){          
//           for(var i=0;i<this.list.length;i++){
//             print(this.list[i]);
//           }
//       }
//  }

//  PrintClass p=new PrintClass();
//     p.add(1);
//     p.add(12);
//     p.add(5);
//     p.printInfo();




 class PrintClass<T>{
      List list=new List<T>();
      void add(T value){
          this.list.add(value);
      }
      void printInfo(){          
          for(var i=0;i<this.list.length;i++){
            print(this.list[i]);
          }
      }
 }



main() {  
    // PrintClass p=new PrintClass();
    // p.add(11);
    // p.add('xxx');
    // p.add(5);
    // p.printInfo();



  // PrintClass p=new PrintClass<String>();

  // p.add('你好');

  //  p.add('哈哈');

  // p.printInfo();




  PrintClass p=new PrintClass<int>();

  p.add(12);

   p.add(23);

  p.printInfo();








 
  // List list=new List();
  // list.add(12);
  // list.add("你好");
  // print(list);



  // List list=new List<String>();

  // // list.add(12);  //错误的写法

  // list.add('你好');
  // list.add('你好1');

  // print(list);





  // List list=new List<int>();

  // // list.add("你好");  //错误写法
  // list.add(12); 

  // print(list);



}