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
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(viewModel.counterService.counterValue.toString()),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.addValue();
                    },
                    child: const Text('Add Counter Value'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.navigateToHome();
                    },
                    child: const Text('Navigate to HomeView'),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
