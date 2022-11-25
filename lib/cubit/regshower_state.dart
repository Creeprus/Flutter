part of 'regshower_cubit.dart';

@immutable
abstract class RegshowerState {}

class RegshowerInitial extends RegshowerState {
}

class ThemeSetter extends RegshowerState
{
final ThemeData theme;

ThemeSetter(this.theme);
}

class ThemeSetterBack extends RegshowerState
{
final ThemeData theme;

ThemeSetterBack(this.theme);
}
