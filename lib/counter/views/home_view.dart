import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../views model/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onViewModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            viewModel.updateTitle();
          },
        ),
        body: Center(
          child: Text(viewModel.title),
        ),
      ),
    );
  }
}
