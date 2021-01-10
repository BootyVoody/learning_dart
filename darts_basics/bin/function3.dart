// Функции
// Все функции в Dart возвращают какое-то значение

void main() {
  void printValue(int value) { // void - функция вернёт null
    print(value); 
  }
  printValue(123);

  // Функцию можно присвоить переменной, передать как параметр в другую функцию
  var list = [1, 2, 3];
  list.forEach(printValue); // метод forEach() - позволяет пробежаться по всем элементам листа. Вызвали функцию printValue внутри метода forEach()

  // Можно передать как анонимную функцию
  list.forEach((value) {
    print(value);
  });

  // Если у нас тело функции состоит только из одного выражения, то можно использовать стрелочные функции
  list.forEach((v) => print(v));

  // Функцию можно присвоить переменной и потом где-нибудь её вызывать
  var toup = (value) => '${value.toUpperCase()}';
  // Теперь в переменной у нас находится функция, следовательно мы можем обратиться к этой переменной
  print(toup('codeandart'));

  // Параметры функции.
  // Именованные параметры
  String getModel({String title, int value}) { // title, value - теперь именованные параметры через {}
    return '$title - ${value + 10}';
  }

  print(getModel(title: 'Model', value: 22));

  // Позиционные параметры. Обращаться к ним стоит строго по порядку. Необязательные параметры в данной функции должны
  // находиться в самом конце и должны быть обернуты в квадратные скобки
  String hello(String name, String msg, [String device]) {
    var result = '$name говорит $msg';

    if (device != null) {
      result = '$result из $device';
    }

    return result;
  }

  print(hello('Alex', 'good morning'));
  print(hello('Alex', 'good bye', 'iphone100x'));

  // Параметры по умолчанию 
  String trueName({String name = 'Alex', bool correct = false}) {
    return correct ? name : 'Не верное имя'; // тернарный оператор
  }

  print(trueName());
  print(trueName(correct: true));

  // Параметры по умолчанию из необязательного параметра
  String hello2(String name, String msg, [String device = 'Android X']) {
    var result = '$name говорит $msg';

    if (device != null) {
      result = '$result из $device';
    }

    return result;
  }
  
  print(hello2('Adel', 'Привет'));
  print(hello2('Adel', 'Пока', 'iPhone 12'));

  // Параметры по умолчанию из именованных параметров
  void createListAndMap({List<int> list = const [1, 2, 3], Map<String, String> games = const {'first': 'Gothic 2', 'second': 'Witcher 3'}}) {
    print('Список по умолчанию: $list');
    print('Словарь по умолчанию: $games');
  }
  createListAndMap();
}
