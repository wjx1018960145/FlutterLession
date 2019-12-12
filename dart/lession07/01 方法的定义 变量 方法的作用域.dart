/*
  内置方法/函数：

      print();

  自定义方法：
      自定义方法的基本格式：

      返回类型  方法名称（参数1，参数2,...）{
        方法体
        return 返回值;
      }
*/

void printInfo(){
  print('我是一个自定义方法');
}

int getNum(){
  var myNum=123;
  return myNum;
}

String printUserInfo(){

  return 'this is str';
}


List getList(){

  return ['111','2222','333'];
}

void main(){

  // print('调用系统内置的方法');

  // printInfo();
  // var n=getNum();
  // print(n);


  // print(printUserInfo());


  // print(getList());

  // print(getList());
  

//演示方法的作用域
  void xxx(){

      aaa(){

          print(getList());
          print('aaa');
      }
      aaa();
  }

  // aaa();  错误写法 

  xxx();  //调用方法


}