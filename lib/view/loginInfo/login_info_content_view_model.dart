import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gogo_password/model/login_info.dart';
import 'package:gogo_password/model/mock_datum.dart';
import 'package:gogo_password/util/constants.dart';

final loginInfoContentViewModelProvider =
    StateNotifierProvider<LoginInfoContentViewModel, bool>(
        (ref) => LoginInfoContentViewModel());

final getLoginInfoProvider = FutureProvider.family((ref, String id) {
  return ref.watch(loginInfoContentViewModelProvider.notifier).getLoginInfo(id);
});

final contentEditStateProvider = StateProvider.autoDispose<ContentEditState>(
  (ref) => ContentEditState.onlyRead,
);

class LoginInfoContentViewModel extends StateNotifier<bool> {
  LoginInfoContentViewModel() : super(false);

  Future<LoginInfo> getLoginInfo(String id) async {
    // TODO : change to use repository
    Future.delayed(const Duration(seconds: 2));
    return login1;
  }
}
