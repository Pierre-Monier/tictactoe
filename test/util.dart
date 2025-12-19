import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

Widget buildTestableWidget(
  Widget widget, {
  List<Override>? overrides,
}) => ProviderScope(
  overrides: overrides ?? [],
  child: MaterialApp(
    home: Scaffold(
      body: widget,
    ),
  ),
);
