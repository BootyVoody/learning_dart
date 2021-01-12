// Условные операторы и циклы
void main() {
  // Условный оператор if
  // if () {
  // // ...
  // } else if () {
  // // ...
  // } else {
  // // ...
  // }

  // Виды цикла for
  for (var i = 0; i < 5; i++) {
    print(i);
  }

  // Так же можно использовать for через in
  var collection = [0, 1, 2];
  for (var x in collection) { // пробегаемся по каждому x в collection
    print(x);
  }

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  callbacks.forEach((value) => value());

  // While такой же как и везде
  // Switch такой же как и везде, но в Dart не рекомендуют его использовать
}
