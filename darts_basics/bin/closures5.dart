// Замыкание - closures
// Замыкание - это объект функции, которые имеет доступ к переменным в своей лексической области видимости, даже если функция
// используется за пределами исходной области видимости. Т.е функции могут замыкать переменные в себя, которые определены в
// окружающих областях.
void main() {
  Function addFunction(num add) {
    return (num i) => add + i; // замыкаем переменную add функции addFunction
  }

  var add2 = addFunction(2); // замыкаем значение 2 в переменной add2
  var add4 = addFunction(4); // замыкаем значение 4 в переменной add4

  print(add2(3));
  print(add2(4));

  print(add4(4));
  print(add4(5));
}
