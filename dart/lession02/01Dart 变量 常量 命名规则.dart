/*
Dart 变量：

  dart是一个强大的脚本类语言，可以不预先定义变量类型 ，自动会类型推倒

  dart中定义变量可以通过var关键字可以通过类型来申明变量

  如：

    var str='this is var';

    String str='this is var';

    int str=123;

  注意： var 后就不要写类型 ，  写了类型 不要var   两者都写   var  a int  = 5;  报错



Dart 常量：   final 和 const修饰符  


    const值不变 一开始就得赋值
    final 可以开始不赋值 只能赋一次 ; 而final不仅有const的编译时常量的特性，最重要的它是运行时常量，并且final是惰性初始化，即在运行时第一次使用前才初始化


    永远不改量的量，请使用final或const修饰它，而不是使用var或其他变量类型。


    final name = 'Bob'; // Without a type annotation
    final String nickname = 'Bobby';

    const bar = 1000000; // Unit of pressure (dynes/cm2)
    const double atm = 1.01325 * bar; // Standard atmosphere



Dart的命名规则：

          1、变量名称必须由数字、字母、下划线和美元符($)组成。

          2.注意：标识符开头不能是数字

          3.标识符不能是保留字和关键字。   

          4.变量的名字是区分大小写的如: age和Age是不同的变量。在实际的运用中,也建议,不要用一个单词大小写区分两个变量。
        
          5、标识符(变量名称)一定要见名思意 ：变量名称建议用名词，方法名称建议用动词  

*/
