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
    viewModel.updateState(title: value?.title);
  });
  return info;
});

class LoginInfoContentViewModel extends StateNotifier<LoginInfoContentState> {
  LoginInfoContentViewModel() : super(LoginInfoContentState());

  void updateState({
    String? title,
    ContentEditState? contentEditState,
  }) {
    state = state.copyWith(
      title: title,
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
  String title;
  ContentEditState contentEditState;

  LoginInfoContentState({
    this.title = '',
    this.contentEditState = ContentEditState.onlyRead,
  });

  LoginInfoContentState copyWith({
    String? title,
    ContentEditState? contentEditState,
  }) {
    return LoginInfoContentState(
      title: title ?? this.title,
      contentEditState: contentEditState ?? this.contentEditState,
    );
  }
}
