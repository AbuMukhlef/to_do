part of 'profile_bloc.dart';

@immutable
sealed class ProfileEvent {}

final class ChangeNameEvent extends ProfileEvent {
  final String name;
  ChangeNameEvent({required this.name});
}
