part of 'basic_info_auth_bloc.dart';

@freezed
class BasicInfoAuthEvent with _$BasicInfoAuthEvent {
  const factory BasicInfoAuthEvent.started() = _Started;
}