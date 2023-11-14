import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../view model/home_viewmodel.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewsModel(),
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
                        viewModel.bottomSheet();
                      },
                      child: const Text('Open Sheet'))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
