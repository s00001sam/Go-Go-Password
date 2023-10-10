import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gogo_password/model/login_info.dart';
import 'package:gogo_password/source/repo/base_repository.dart';
import 'package:gogo_password/source/repo/gogo_respository.dart';
import 'package:gogo_password/util/constants.dart';

final loginInfoContentViewModelProvider =
    StateNotifierProvider<LoginInfoContentViewModel, LoginInfoContentState>(
  (ref) => LoginInfoContentViewModel(
    dataRepository: ref.watch(dataRepositoryProvider),
  ),
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
  final BaseRepository dataRepository;

  LoginInfoContentViewModel({required this.dataRepository})
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
    return await dataRepository.getSecureInfo(id: id) as LoginInfo?;
  }

  Future<void> saveLoginInfo({LoginInfo? loginInfo}) async {
    var info = loginInfo ?? state.loginInfo;
    await dataRepository.upsertLoginInfo(loginInfo: info);
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
