// Исключения - Exception
void main() {
  Position _position;
  Future<void> getCurrentLocation() async {
    try {
      _position = await _geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

      latitude = _position.latitude;
      longitude = _position.longitude;

    } catch (error) { // Вывод ошибки
      print(error);
    } finally { // В любом случае выведет значение
      print('Всегда!'); 
    }
  }
}
