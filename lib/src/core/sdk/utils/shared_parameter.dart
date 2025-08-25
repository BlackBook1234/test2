part of 'utils.dart';

class SharedParameter {
  static dynamic object;
  static bool isHomeReload = false;

  static void setParameter(dynamic obj) {
    object = obj;
  }
}
