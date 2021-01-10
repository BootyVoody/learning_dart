// Лексическая область. Язык программирования Dart - это язык с лексической областью. Т.е область видимости переменных определяется
// просто компановкой кода
bool topLevel = true;
void main() {
  bool insideMain = true;
  void MyFunction() {
    bool insideMyFunction = true;
    print(topLevel); // переменная вызывается, даже если она находится за переделами main
    print(insideMain); // переменная вызывается, находится внутри main
    print(insideMyFunction); // переменная вызывается, находится внутри MyFuction
  }

  MyFunction();
}
