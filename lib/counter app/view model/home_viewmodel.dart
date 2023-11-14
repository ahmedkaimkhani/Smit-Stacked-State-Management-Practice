import 'package:stacked/stacked.dart';

import '../services/counter_service.dart';

class HomeViewsModel extends BaseViewModel {
  final counterService = CounterService();
}
