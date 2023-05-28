class Spacecraft {
  String name;
  DateTime? launchDate;

  // 只读非final属性
  int? get launchYear => launchDate?.year;

  // 构造函数
  Spacecraft(this.name, this.launchDate) {
    //初始化
    this.name=name;
    this.launchDate=launchDate; 
  }

  // 转到默认的构造函数的命名函数
  Spacecraft.unlaunched(String name) : this(name, null);

  // 方法
  void describe() {
    print('Spacecraft: $name');
    // 类型提升对getter不起作用
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}