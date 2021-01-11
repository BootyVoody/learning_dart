// Коллекции
void main() {
  // List - списки - массивы
  var list = [1, 2, 3];

  List<int> values = [1, 2, 3, 4, 5, 6, 7, 8]; // <int> это Generic
  values.add(9);
  values.remove(3);

  print('$values - размер ${values.length}');

  // Чтобы сделать список неизменяемым необходимо добавить ключевое слово const
  List<int> constantList = const [1, 2, 3, 4, 5];
  // constantList.add(6); !Ошибка!

  // Spread оператор
  var list1 = [3, 2, 1];
  var list2 = [4, ...list1];

  print(list2);

  // Проверка на null, nullable spread оператор
  var nullableList; // неинициализированная переменная в Dart всегда будет являться null, т.к в Dart всё является объектом
  var list3 = [1, ...?nullableList]; // Если значение списка null, то spread оператор будет игнорироваться
  print(list3);

  // Внутри списков можно ипользовать условные конструкции, а также циклы
  bool permission = true;
  var nav = ['home', 'about', if (permission) 'admin'];
  print(nav);

  List<int> intList = [1, 2, 3, 4, 5];
  List<String> strList = ['>0', for(var i in intList) '>$i'];
  print(strList);

  // Множества - Set, неупорядочная коллекция уникальных элементов
  var games = {'Witcher 3', 'Gwint', 'DMC', 'FF', 'LostArk'};
  var names = <String>{};
  Set<String> names1 = {}; // Set - конструктор, <String> - Generic

  var names3 = {}; // Не множество! Это будет словарь

  games.add('TES');
  games.addAll({'Langrisser', 'Gothic 2', 'Gothic 2'});

  print(games);

  final constantGames = const {'Witcher', 'Gwint', 'DMC', 'FF', 'LostArk'};
  // constantGames.add('Gothic 2'); !Ошибка!
  // В множествах по аналогии со списками так же работают:
  // spread и spread-nullable, if и for операторы

  // Словари - Map
  Map<String, String> values1 = {
    'k1': 'value1',
    'k2': 'value2',
    'k3': 'value3',
  };
  
  var films = Map(); // конструктор Map()
  films['first'] = 'LOTR'; 
  films['second'] = 'Hobbit';

  print(values1);
  print(values1.length);
  print(films);

  films = {'third': 'Matrix'}; // можно сразу присвоить ключ: значение
  print(films);

  final constantMap = const {
    1: 'one',
    2: 'two',
    3: 'three',
  };
  // В словарях также работают spread, spread-nullable, if и for операторы
}
