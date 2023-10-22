import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String title = 'default';

  void initialise() {
    title = 'initialised';
    rebuildUi();
  }

  int counter = 0;
  void updateTitle() {
    counter++;
    title = '$counter';
    rebuildUi();
  }
}
