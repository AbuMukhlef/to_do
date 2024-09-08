import 'package:get_it/get_it.dart';

import '../data_layer/task_data_layer.dart';

void setup() {
  GetIt.I.registerSingleton<TaskDataLayer>(TaskDataLayer());
}
