import 'package:stacked/stacked.dart';
import 'package:stacked_management_practice/counter%20app/app/app.locator.dart';
import 'package:stacked_management_practice/counter%20app/app/app.router.dart';
import 'package:stacked_management_practice/counter%20app/services/counter_service.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = CounterService();

  navigateToHome() {
    navigationService.navigateToHomeViews();
  }

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }
}
