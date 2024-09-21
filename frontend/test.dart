
void main() {
  var a = 'градецкий арсений александрович';
  var b = a.capitalize();
  print(b);
}

extension Capitalizer on String{
  String capitalize() => (split(' ').map((e) => e[0].toUpperCase()+ e.substring(1))).join(' ');
}