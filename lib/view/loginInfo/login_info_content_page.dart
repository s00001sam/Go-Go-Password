import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gogo_password/generated/l10n.dart';
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
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // handle init state is editing or not
      var stateInit = widget.isEditor
          ? ContentEditState.editing
          : ContentEditState.onlyRead;
      var viewModelRead = ref.read(loginInfoContentViewModelProvider.notifier);
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
    var title = isEditing ? stringRes.edit_title(loginStr) : viewState.title;
    final loginInfo = ref.watch(getLoginInfoProvider(widget.id));

    return Scaffold(
        appBar: BaseAppBar(
          title: title,
          actions: [
            IconButton(
              icon: Icon(actionIcon),
              tooltip: 'change editable mode',
              onPressed: () {
                if (isEditing) {
                  // TODO save logic
                  viewModel.updateState(
                    contentEditState: ContentEditState.onlyRead,
                  );
                } else {
                  viewModel.updateState(
                    contentEditState: ContentEditState.editing,
                  );
                }
              },
            ),
          ],
        ),
        body: loginInfo.when(
          data: (data) {
            var nameFocusNode = FocusNode();
            if (isEditing) nameFocusNode.requestFocus();

            return LoginInfoContentBody(
              isEditing: isEditing,
              nameFocusNode: nameFocusNode,
            );
          },
          error: (error, stackTrace) => ErrorView(error: error.toString()),
          loading: () => const LoadingView(),
        ));
  }
}

class LoginInfoContentBody extends StatelessWidget {
  final bool isEditing;
  final FocusNode? nameFocusNode;

  const LoginInfoContentBody({
    this.isEditing = false,
    this.nameFocusNode,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              focusNode: nameFocusNode,
              isEnabled: isEditing,
              onInputChanged: (input) {},
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: webUrlStr,
              hint: stringRes.input_hint(webUrlStr),
              isEnabled: isEditing,
              onInputChanged: (input) {},
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: accountStr,
              hint: stringRes.input_hint(accountStr),
              isEnabled: isEditing,
              onInputChanged: (input) {},
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: passwordStr,
              hint: stringRes.input_hint(passwordStr),
              isEnabled: isEditing,
              onInputChanged: (input) {},
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: noteStr,
              hint: stringRes.input_hint(noteStr),
              isMultiLine: true,
              isEnabled: isEditing,
              onInputChanged: (input) {},
            ),
          ],
        ),
      ),
    );
  }
}
