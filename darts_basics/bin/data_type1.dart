// Dart - это тру объектно оринтированный язык программирования. Который основан на классах наследованиях и т.д, с применением примесей.
// Всё что можно поместить в переменную - является объектом. Все объекты наследуются от общего класса Object.
// Аннотация типов не является обязательной, хотя язык строготипизированный.

// Обращения у объекта через точку (.).
// Ключевое слово new необязательно.
// ; - обязательны.

// Dart поддерживает универсальные типы, т.е у него есть Generics.
// В Dart, в отличии от java, нет ключевых слов public, protected, private. Вместо этого, чтобы задавать приватную функцию,
// переменную ставится "_".

// Простые типы данных
// Каждое приложение Dart имеет функцию main, которая управляет и является входной точкой приложения.
// Main по умолчанию возвращает void и принимает список List<String str>.
void main() {
  var number = 0; // var - dart сам выведет тип данных;
  int intValue = 42;
  double doubleValue = 12.99;

  num value = getValueFromServer(); // тип num (для примера) будет либо int, либо double взависимоти  от того какие данные к нам прилетят с условного сервера;

  print(number.runtimeType); // runtimeType - метод для просмотра типа переменной;
  print(intValue.runtimeType);
  print(doubleValue.runtimeType);
  print(value.runtimeType);
}

double getValueFromServer() { // функци getValueFromServer возвращает тип double
  return 12.88;
}