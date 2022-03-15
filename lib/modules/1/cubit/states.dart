abstract class ScreenStates{}
class InitialState extends ScreenStates{}
class SuccessState extends ScreenStates{}
class ErrorState extends ScreenStates{
  late final String error;
  ErrorState(this.error);
}
