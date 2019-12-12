void main(){

/*需求：使用forEach打印下面List里面的数据*/

    // List list=['苹果','香蕉','西瓜'];


    // list.forEach((value){
    //   print(value);
    // });

    // list.forEach((value)=>print(value));


    // list.forEach((value)=>{
    //   print(value)
    // });




/*需求：修改下面List里面的数据，让数组中大于2的值乘以2*/

    List list=[4,1,2,3,4];

    // var newList=list.map((value){

    //     if(value>2){
    //       return value*2;
    //     }
    //     return value;

    // });
    // print(newList.toList());


  //  var newList=list.map((value)=>value>2?value*2:value);

  //  print(newList.toList());



/*
需求：    1、定义一个方法isEvenNumber来判断一个数是否是偶数  
         2、定义一个方法打印1-n以内的所有偶数
*/


//定义一个方法isEvenNumber来判断一个数是否是偶数  
    bool isEvenNumber(int n){
      if(n%2==0){
        return true;
      }
      return false;
    }

    printNum(int n){
        for(var i=1;i<=n;i++){
            if(isEvenNumber(i)){
              print(i);
            }
        }
    }

    printNum(10);


}
