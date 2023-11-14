import 'package:stacked/stacked.dart';
import 'package:stacked_management_practice/counter%20app/app/app.locator.dart';
import 'package:stacked_management_practice/counter%20app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();

  navigateToHome() {
    navigationService.navigateToHomeViews();
  }
}
