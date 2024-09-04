import 'package:get_it/get_it.dart';
import 'package:getit_with_bloc/layer/profile_layer.dart';

void setup() {
  GetIt.I.registerSingleton<ProfileLayer>(ProfileLayer());
}
