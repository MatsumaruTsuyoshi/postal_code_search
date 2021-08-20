import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:postal_code_search/app.dart';

void main() {
  runApp(ProviderScope(child: App()));
}
