/*
Dart中的泛型接口:

    实现数据缓存的功能：有文件缓存、和内存缓存。内存缓存和文件缓存按照接口约束实现。

    1、定义一个泛型接口 约束实现它的子类必须有getByKey(key) 和 setByKey(key,value)

    2、要求setByKey的时候的value的类型和实例化子类的时候指定的类型一致


*/


  // abstract class ObjectCache {
  //   getByKey(String key);
  //   void setByKey(String key, Object value);
  // }

  // abstract class StringCache {
  //   getByKey(String key);
  //   void setByKey(String key, String value);
  // }


  // abstract class Cache<T> {
  //   getByKey(String key);
  //   void setByKey(String key, T value);
  // }


abstract class Cache<T>{
  getByKey(String key);
  void setByKey(String key, T value);
}

class FlieCache<T> implements Cache<T>{
  @override
  getByKey(String key) {    
    return null;
  }

  @override
  void setByKey(String key, T value) {
   print("我是文件缓存 把key=${key}  value=${value}的数据写入到了文件中");
  }
}

class MemoryCache<T> implements Cache<T>{
  @override
  getByKey(String key) {   
    return null;
  }

  @override
  void setByKey(String key, T value) {
       print("我是内存缓存 把key=${key}  value=${value} -写入到了内存中");
  }
}
void main(){


    // MemoryCache m=new MemoryCache<String>();

    //  m.setByKey('index', '首页数据');


     MemoryCache m=new MemoryCache<Map>();

     m.setByKey('index', {"name":"张三","age":20});
}