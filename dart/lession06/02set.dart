//Set 

//用它最主要的功能就是去除数组重复内容

//Set是没有顺序且不能重复的集合，所以不能通过索引去获取值

void main(){

  
  // var s=new Set();
  // s.add('香蕉');
  // s.add('苹果');
  // s.add('苹果');

  // print(s);   //{香蕉, 苹果}

  // print(s.toList()); 


  List myList=['香蕉','苹果','西瓜','香蕉','苹果','香蕉','苹果'];

  var s=new Set();

  s.addAll(myList);

  print(s);

  print(s.toList());


  
}