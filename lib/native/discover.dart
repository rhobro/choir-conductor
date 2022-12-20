import 'package:conductor/native/bridge_generated_api_discover.dart';
import 'package:conductor/native/ffi.dart';

class Discover {
  static Future<void> discover() {
    return _api.discover();
  }

  static final _api = ApiDiscoverImpl(dylib);
}
