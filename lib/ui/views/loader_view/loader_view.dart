import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:flutter_mvvm/ui/views/loader_view/loader_view_model.dart';

class LoaderView extends StatelessWidget {
  const LoaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  static Widget create(BuildContext context) {
    return Provider(
      create: LoaderViewModel.new,
      lazy: false,
      child: const LoaderView(),
    );
  }
}
