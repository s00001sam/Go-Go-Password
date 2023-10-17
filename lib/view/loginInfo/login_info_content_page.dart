import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gogo_password/generated/l10n.dart';
import 'package:gogo_password/model/login_info.dart';
import 'package:gogo_password/router.dart';
import 'package:gogo_password/util/constants.dart';
import 'package:gogo_password/view/common.dart';
import 'login_info_content_view_model.dart';

class LoginInfoContentPage extends ConsumerStatefulWidget {
  final bool isEditor;
  final String id;

  const LoginInfoContentPage({
    required this.isEditor,
    required this.id,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<LoginInfoContentPage> createState() =>
      _LoginInfoContentPageState();
}

class _LoginInfoContentPageState extends ConsumerState<LoginInfoContentPage> {
  bool changeToEditing = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController webUrlController = TextEditingController();
  final TextEditingController accountController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController noteController = TextEditingController();

  void changeEditingState(
    bool isEditing,
    LoginInfoContentViewModel viewModel,
    LoginInfoContentState viewState,
  ) {
    if (isEditing) {
      var now = DateTime.now().millisecondsSinceEpoch;
      var isCreated = widget.id == DEFAULT_ID_CREATE;
      var createdTime = isCreated ? now : viewState.loginInfo.createdTime;
      var updatedTime = now;
      LoginInfo info = viewState.loginInfo.copy(
        name: nameController.text,
        webUrl: webUrlController.text,
        account: accountController.text,
        password: passwordController.text,
        note: noteController.text,
        createdTime: createdTime,
        updatedTime: updatedTime,
      );
      viewModel.saveLoginInfo(loginInfo: info);
      changeToEditing = false;
      viewModel.updateState(
        loginInfo: info,
        contentEditState: ContentEditState.onlyRead,
      );
    } else {
      changeToEditing = true;
      viewModel.updateState(
        contentEditState: ContentEditState.editing,
      );
    }
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // handle init state is editing or not
      var stateInit = widget.isEditor
          ? ContentEditState.editing
          : ContentEditState.onlyRead;
      var viewModelRead = ref.read(loginInfoContentViewModelProvider.notifier);
      changeToEditing = stateInit == ContentEditState.editing;
      viewModelRead.updateState(contentEditState: stateInit);
    });
  }

  @override
  Widget build(BuildContext context) {
    var stringRes = S.of(context);
    var viewModel = ref.watch(loginInfoContentViewModelProvider.notifier);
    var viewState = ref.watch(loginInfoContentViewModelProvider);
    final isEditing = viewState.contentEditState == ContentEditState.editing;
    var actionIcon = isEditing ? Icons.done : Icons.edit;
    var loginStr = stringRes.tab_bar_title_login;
    var name = viewState.loginInfo.name;
    var titleEnd = name.isEmpty ? loginStr : name;
    var title = isEditing ? stringRes.edit_title(titleEnd) : titleEnd;

    final loginInfo = ref.watch(getLoginInfoProvider(widget.id));

    return Scaffold(
        appBar: BaseAppBar(
          title: title,
          actions: [
            IconButton(
              icon: Icon(actionIcon),
              tooltip: 'change editable mode',
              onPressed: () {
                changeEditingState(isEditing, viewModel, viewState);
              },
            ),
          ],
        ),
        body: loginInfo.when(
          data: (data) {
            var nameFocusNode = FocusNode();
            if (changeToEditing) {
              changeToEditing = false;
              nameFocusNode.requestFocus();
            }

            return LoginInfoContentBody(
              isEditing: isEditing,
              nameFocusNode: nameFocusNode,
              loginInfo: viewState.loginInfo,
              nameController: nameController,
              webUrlController: webUrlController,
              accountController: accountController,
              passwordController: passwordController,
              noteController: noteController,
            );
          },
          error: (error, stackTrace) => ErrorView(error: error.toString()),
          loading: () => const LoadingView(),
        ));
  }
}

class LoginInfoContentBody extends ConsumerWidget {
  final bool isEditing;
  final FocusNode? nameFocusNode;
  final LoginInfo loginInfo;

  final TextEditingController nameController;
  final TextEditingController webUrlController;
  final TextEditingController accountController;
  final TextEditingController passwordController;
  final TextEditingController noteController;

  LoginInfoContentBody({
    this.isEditing = false,
    this.nameFocusNode,
    required this.loginInfo,
    required this.nameController,
    required this.webUrlController,
    required this.accountController,
    required this.passwordController,
    required this.noteController,
    Key? key,
  }) : super(key: key) {
    nameController.text = loginInfo.name;
    webUrlController.text = loginInfo.webUrl;
    accountController.text = loginInfo.account;
    passwordController.text = loginInfo.password;
    noteController.text = loginInfo.note;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var stringRes = S.of(context);
    var nameStr = stringRes.input_title_name;
    var webUrlStr = stringRes.input_title_web_url;
    var accountStr = stringRes.input_title_account;
    var passwordStr = stringRes.input_title_password;
    var noteStr = stringRes.input_title_note;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            BaseInput(
              title: nameStr,
              hint: stringRes.input_hint(nameStr),
              // defaultText: loginInfo.name,
              focusNode: nameFocusNode,
              isEnabled: isEditing,
              textController: nameController,
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: webUrlStr,
              hint: stringRes.input_hint(webUrlStr),
              // defaultText: loginInfo.webUrl,
              isEnabled: isEditing,
              textController: webUrlController,
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: accountStr,
              hint: stringRes.input_hint(accountStr),
              // defaultText: loginInfo.account,
              isEnabled: isEditing,
              textController: accountController,
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: passwordStr,
              hint: stringRes.input_hint(passwordStr),
              // defaultText: loginInfo.password,
              isEnabled: isEditing,
              isPassword: true,
              textController: passwordController,
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: noteStr,
              hint: stringRes.input_hint(noteStr),
              // defaultText: loginInfo.note,
              isMultiLine: true,
              isEnabled: isEditing,
              textController: noteController,
            ),
          ],
        ),
      ),
    );
  }
}
