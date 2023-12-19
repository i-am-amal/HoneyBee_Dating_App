part of 'bottom_navigation_bloc.dart';

@freezed
class BottomNavigationState with _$BottomNavigationState {
  const factory BottomNavigationState.initial({required int selectedIndex}) =
      _Initial;
}
