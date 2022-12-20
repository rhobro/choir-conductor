import 'dart:ffi';
import 'dart:io';

const _base = 'native';
final _path = Platform.isWindows ? '$_base.dll' : 'lib$_base.so';
final dylib =
    Platform.isMacOS ? DynamicLibrary.executable() : DynamicLibrary.open(_path);
