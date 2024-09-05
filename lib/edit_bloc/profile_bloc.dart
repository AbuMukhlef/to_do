import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

import '../layer/profile_layer.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final profileGet = GetIt.I.get<ProfileLayer>();
  ProfileBloc() : super(ProfileInitial()) {
    on<ProfileEvent>((event, emit) {});

    on<ChangeNameEvent>((event, emit) {
      profileGet.profileNameLayer.name = event.name;

      emit(ChangeNameState());
    });
  }
}
