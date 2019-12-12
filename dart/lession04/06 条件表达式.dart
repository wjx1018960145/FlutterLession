void main(){

  
  //1、if  else   switch case 


    // bool flag=true;

    // if(flag){
    //   print('true');
    // }else{
    //   print('false');
    // }


  //判断一个人的成绩 如果大于60 显示及格   如果大于 70显示良好  如果大于90显示优秀

  // var score=41;
  // if(score>90){
  //   print('优秀');
  // }else if(score>70){
  //    print('良好');
  // }else if(score>=60){
  //   print('及格');
  // }else{
  //   print('不及格');
  // }


  // var sex="女";
  // switch(sex){
  //   case "男":
  //     print('性别是男');
  //     break;
  //   case "女":
  //     print('性别是女');
  //     print('性别是女');
  //     break;
  //   default:
  //     print('传入参数错误');
  //     break;

  // }



  //2、三目运算符 

  // var falg=true;
  // var c;
  // if(falg){
  //     c='我是true';
  // }else{
  //   c="我是false";
  // }
  // print(c);



  bool flag=false;
  String c=flag?'我是true':'我是false';
  print(c);

     
  //3  ??运算符

  // var a;
  // var b= a ?? 10;

  // print(b);   10


  var a=22;
  var b= a ?? 10;

  print(b);


      
}