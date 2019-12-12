class Animal{
  String _name;   //私有属性
  int age; 
  //默认构造函数的简写
  Animal(this._name,this.age);

  void printInfo(){   
    print("${this._name}----${this.age}");
  }

  String getName(){ 
    return this._name;
  } 
  void _run(){
    print('这是一个私有方法');
  }

  execRun(){
    this._run();  //类里面方法的相互调用
  }
}
