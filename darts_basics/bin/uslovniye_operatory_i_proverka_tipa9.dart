// Условные операторы и проверка типа
import 'dart:html';

void main() {
  print('codeandart' is String);
  print('codeandart' is int);
  print('codeandart' is! String); // codeanart не является типов String

  // Оператор присваивания с null проверкой
  var b;
  var value = 12;
  b ??= value; // Присвоить значение b значение value, если b == null, в протином случае b останется прежним
  print(b);

  // Тернарный оператор
  bool isPublic = true;
  var visibility = isPublic ? 'Public' : 'Private';
  print(visibility);

  // Проверка на null
  String getName(String name) => name ?? 'Guest'; // Если name != null, тогда вернуть значение name, в противном случае 
  // вернуть значение Guest. Грубо говоря это ещё более короткая запись тернарного оператор
  print(getName(null)); 

  // Каскадный оператор
  querySelector('#confirm') // Вызывается querySelector, возвращается какой-то объект
  ..text = 'Confirm' // Вызываем свойство text, присваиваем ему значение Confirm сеттером
  ..classes.add('important') // вызываем след. метод
  ..onClick.listen((e) => window.alert('Confirmed!'));
  // Каскадный оператор нам позволяет избавиться от временных переменных, позволяет написать более гибкий и элегантный код
  // Аналогичная запись
  var button = querySelector('#confirm');
  button.text = 'Confirm';
  button.classes.add('important');
  button.onClick.listen((e) => window.alert('Confirmed!'));
}
