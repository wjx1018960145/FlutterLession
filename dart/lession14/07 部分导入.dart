/*
部分导入
  如果只需要导入库的一部分，有两种模式：

     模式一：只导入需要的部分，使用show关键字，如下例子所示：

      import 'package:lib1/lib1.dart' show foo;

     模式二：隐藏不需要的部分，使用hide关键字，如下例子所示：

      import 'package:lib2/lib2.dart' hide foo;      

*/

// import 'lib/myMath.dart' show getAge;

 import 'lib/myMath.dart' hide getName;

void main(){
//  getName();
  getAge();
}