import 'Db.dart';


class Mysql implements Db{
  
  @override
  String uri;

  Mysql(this.uri);

  @override
  add(data) {   
    print('这是mysql的add方法'+data);
  }

  @override
  delete() {   
    return null;
  }

  @override
  save() {   
    return null;
  }

  
}
