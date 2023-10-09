import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gogo_password/model/login_info.dart';
import 'package:gogo_password/model/mock_datum.dart';
import 'package:gogo_password/util/constants.dart';

final loginInfoContentViewModelProvider =
    StateNotifierProvider<LoginInfoContentViewModel, LoginInfoContentState>(
  (ref) => LoginInfoContentViewModel(),
);

final getLoginInfoProvider = FutureProvider.family((ref, String id) {
  var info =
      ref.watch(loginInfoContentViewModelProvider.notifier).getLoginInfo(id);
  info.then((value) {
    // update title
    var viewModel = ref.read(loginInfoContentViewModelProvider.notifier);
    if (value != null) viewModel.updateState(loginInfo: value);
  });
  return info;
});

class LoginInfoContentViewModel extends StateNotifier<LoginInfoContentState> {
  LoginInfoContentViewModel()
      : super(LoginInfoContentState(loginInfo: LoginInfo()));

  void updateState({
    LoginInfo? loginInfo,
    ContentEditState? contentEditState,
  }) {
    state = state.copyWith(
      loginInfo: loginInfo,
      contentEditState: contentEditState,
    );
  }

  Future<LoginInfo?> getLoginInfo(String id) async {
    // TODO : change to use repository
    Future.delayed(const Duration(seconds: 10));
    return login1;
  }
}

class LoginInfoContentState {
  LoginInfo loginInfo;
  ContentEditState contentEditState;

  LoginInfoContentState({
    required this.loginInfo,
    this.contentEditState = ContentEditState.onlyRead,
  });

  LoginInfoContentState copyWith({
    LoginInfo? loginInfo,
    ContentEditState? contentEditState,
  }) {
    return LoginInfoContentState(
      loginInfo: loginInfo ?? this.loginInfo,
      contentEditState: contentEditState ?? this.contentEditState,
    );
  }
}
