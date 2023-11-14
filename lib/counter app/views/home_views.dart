import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../counter/views model/home_view_model.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return const Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Counter value'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
