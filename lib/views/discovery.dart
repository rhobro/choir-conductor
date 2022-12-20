import 'package:conductor/native/discover.dart';
import 'package:conductor/native/extratest.dart';
import 'package:flutter/material.dart';

class Discovery extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  @override
  void initState() {
    super.initState();
    Extratest.add(4, 55).then((v) => print("ADDED $v"));
    Discover.discover().then((v) => print("DISCOVERED"));
  }
}
