import 'package:poly_inside/entry_points/stub_entrypoint.dart'
  if(dart.library.html) 'package:poly_inside/entry_points/web_entrypoint.dart'
  if(dart.library.io) 'package:poly_inside/entry_points/io_entrypoint.dart';

void main(List<String> args) => runner();

