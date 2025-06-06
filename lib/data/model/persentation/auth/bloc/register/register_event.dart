sealed class RegisterEvent {}

class RegisterRequested extends RegisterEvent {
  final RegisterRequestModel requestModel;

  RegisterRequested({required this.requestModel});
}