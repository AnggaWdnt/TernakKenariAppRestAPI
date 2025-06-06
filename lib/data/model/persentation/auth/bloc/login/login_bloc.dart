import 'package:canary_template/data/model/persentation/auth/bloc/login/login_event.dart';
import 'package:canary_template/data/model/persentation/auth/bloc/login/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final authRepository authRepository;

  LoginBloc({required this.authRepository}) : super(LoginInitial()) {
    on<LoginRequested>(_onLoginRequested);
  }

  Future<void> _onLoginRequested(
    LoginRequested event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginLoading());

    final result = await authRepository.login(event.requestModel);

    result.fold(
      (l) => emit(LoginFailure(error: l)),
      (r) => emit(LoginSuccess(responseModel: r)),
    );
  }
}