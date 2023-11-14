import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view model/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, viewModel, child) {
        return const Scaffold();
      },
    );
  }
}
