/*
List里面常用的属性和方法：

    常用属性：
        length          长度
        reversed        翻转
        isEmpty         是否为空
        isNotEmpty      是否不为空
    常用方法：  
        add         增加
        addAll      拼接数组
        indexOf     查找  传入具体值
        remove      删除  传入具体值
        removeAt    删除  传入索引值
        fillRange   修改   
        insert(index,value);            指定位置插入    
        insertAll(index,list)           指定位置插入List
        toList()    其他类型转换成List  
        join()      List转换成字符串
        split()     字符串转化成List
        forEach   
        map
        where
        any
        every

*/


void main(){

  // List myList=['香蕉','苹果','西瓜'];
  // print(myList[1]);


  // var list=new List();
  // list.add('111');
  // list.add('222');
  // print(list);


//List里面的属性：
    // List myList=['香蕉','苹果','西瓜'];
    // print(myList.length);
    // print(myList.isEmpty);
    // print(myList.isNotEmpty);
    // print(myList.reversed);  //对列表倒序排序
    // var newMyList=myList.reversed.toList();
    // print(newMyList);

//List里面的方法：


    // List myList=['香蕉','苹果','西瓜'];
    //myList.add('桃子');   //增加数据  增加一个

    // myList.addAll(['桃子','葡萄']);  //拼接数组

    // print(myList);

    //print(myList.indexOf('苹x果'));    //indexOf查找数据 查找不到返回-1  查找到返回索引值


    // myList.remove('西瓜');

    // myList.removeAt(1);

    // print(myList);
  



    // List myList=['香蕉','苹果','西瓜'];

    // myList.fillRange(1, 2,'aaa');  //修改

    //  myList.fillRange(1, 3,'aaa');  


    // myList.insert(1,'aaa');      //插入  一个

    // myList.insertAll(1, ['aaa','bbb']);  //插入 多个

    // print(myList);






    // List myList=['香蕉','苹果','西瓜'];

    // var str=myList.join('-');   //list转换成字符串

    // print(str);

    // print(str is String);  //true


    var str='香蕉-苹果-西瓜';

    var list=str.split('-');

    print(list);

    print(list is List);

  


  


}