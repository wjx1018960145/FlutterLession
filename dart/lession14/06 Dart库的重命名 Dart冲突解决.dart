/*
1、冲突解决
当引入两个库中有相同名称标识符的时候，如果是java通常我们通过写上完整的包名路径来指定使用的具体标识符，甚至不用import都可以，但是Dart里面是必须import的。当冲突的时候，可以使用as关键字来指定库的前缀。如下例子所示：

    import 'package:lib1/lib1.dart';
    import 'package:lib2/lib2.dart' as lib2;


    Element element1 = new Element();           // Uses Element from lib1.
    lib2.Element element2 = new lib2.Element(); // Uses Element from lib2.

*/

import 'lib/Person1.dart';
import 'lib/Person2.dart' as lib;

main(List<String> args) {
  Person p1=new Person('张三', 20);
  p1.printInfo();


  lib.Person p2=new lib.Person('李四', 20);

  p2.printInfo();

}