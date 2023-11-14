import 'package:stacked/stacked.dart';
import 'package:stacked_management_practice/counter%20app/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/counter_service.dart';

class HomeViewsModel extends BaseViewModel {
  final counterService = locator<CounterService>();

  final bottomSheetService = locator<BottomSheetService>();

  bottomSheet() {
    bottomSheetService.showBottomSheet(
        title: 'Counter Value: ${counterService.counterValue.toString()}');
  }
}
