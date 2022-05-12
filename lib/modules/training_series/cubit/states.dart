abstract class ScreenStates{}
class InitialState extends ScreenStates{}
class SuccessState extends ScreenStates{}
class ErrorState extends ScreenStates{
  late final String error;
  ErrorState(this.error);
}
class ShowSuccess extends ScreenStates{}
class HideSuccess extends ScreenStates{}

