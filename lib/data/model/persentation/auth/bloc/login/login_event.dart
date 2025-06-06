
sealed class LoginEvent {}

class LoginRequested extends LoginEvent {
  final LoginRequestModel requestModel;

  LoginRequested({required this.requestModel});
}