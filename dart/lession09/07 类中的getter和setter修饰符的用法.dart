

// class Rect{

//   int height;
//   int width;
 
//   getArea(){
//     return this.height*this.width;
//   } 
// }


// class Rect{
//   num height;
//   num width; 
  
//   Rect(this.height,this.width);
//   area(){
//     return this.height*this.width;
//   }
// }

// void main(){
//   Rect r=new Rect(10,4);
//   print("面积:${r.area()}");   
// }





// class Rect{
//   num height;
//   num width;   
//   Rect(this.height,this.width);
//   get area{
//     return this.height*this.width;
//   }
// }

// void main(){
//   Rect r=new Rect(10,2);
//   print("面积:${r.area}");      //注意调用直接通过访问属性的方式访问area
// }





class Rect{
  num height;
  num width; 
  
  Rect(this.height,this.width);
  get area{
    return this.height*this.width;
  }
  set areaHeight(value){
    this.height=value;
  }
}

void main(){
  Rect r=new Rect(10,4);
  // print("面积:${r.area()}");   
  r.areaHeight=6;

  print(r.area);

}