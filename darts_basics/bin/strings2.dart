// Строки
void main() {
  String str = 'Изучаем Dart';
  int num = 42;

  print('${str.toUpperCase()} - $num'); // Интерполяция строк ${}

  // Как преобразовать строку в тип и наоборот
  print(1 == int.parse('1')); // Перевод строки в int с помощью метода parse()
  print(12.22 == double.parse('12.22')); // Перевод строки в double с помощью метода parse()

  print(1.toString() == '1'); // Перевод числа int в String с помощью метода toString()
  print(3.14159.toString() == '3.14159'); // Перевод числа double в String с помощью метода toString()
  
  print(3.14159.toStringAsFixed(2) == '3.14'); // Перевод числа double в String с помощью метода toStringAsFixed(2) с округлением до двух знаков

  print(42 == int.parse('${num}')); // Тоже самое, что и первый вариант, только с переменной num типа int
}
