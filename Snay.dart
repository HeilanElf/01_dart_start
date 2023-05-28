// 异步
const oneSecond = Duration(seconds: 1);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

// 上述等价于
Future<void> printWithDelay1(String message) {
  return Future.delayed(oneSecond).then((_) {
    print(message);
  });
}