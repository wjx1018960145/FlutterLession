/*
	语法格式:
		
		while(表达式/循环条件){			
			
		}	
		
    		
		do{
			语句/循环体
			
		}while(表达式/循环条件);
		
				

		注意： 1、最后的分号不要忘记
			    2、循环条件中使用的变量需要经过初始化
		      3、循环体中，应有结束循环的条件，否则会造成死循环。
*/


void main(){
  

 /*
    int i=1;
    while(i<=10){

        print(i);
    }
    //死循环
 
 */ 



    // int i=1;
    // while(i<=10){
    //     print(i);
    //     i++;
    // }


//1、求1+2+3+4 ...+100的和


    // int i=1;
    // var sum=0;
    // while(i<=100){
    //    sum+=i;
    //    i++;
    // }
    // print(sum);


    // int i=1;
    // var sum=0;
    // do{
    //    sum+=i;
    //    i++;
    // }while(i<=100);
    // print(sum);







  //while 和 do while的区别   第一次循环条件不成立的情况下
    // int i=10;
	  // while(i<2){
	  // 	print('执行代码');
	  // }




	  var j=10;	  
	  do{
	  	print('执行代码');
	  }while(j<2);

}