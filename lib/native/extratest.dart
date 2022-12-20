import 'package:conductor/native/bridge_generated_api_extratest.dart';
import 'package:conductor/native/ffi.dart';

class Extratest {
  static Future<int> add(int a, int b) {
    return _api.add(a: a, b: b);
  }

  static final _api = ApiExtratestImpl(dylib);
}
