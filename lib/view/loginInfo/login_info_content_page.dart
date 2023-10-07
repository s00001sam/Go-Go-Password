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
      ref.read(contentEditStateProvider.notifier).state = stateInit;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isEditing =
        ref.watch(contentEditStateProvider) == ContentEditState.editing;
    final stateReading = ref.read(contentEditStateProvider.notifier);
    var stringResource = S.of(context);
    final loginInfo = ref.watch(getLoginInfoProvider(widget.id));
    var actionIcon = isEditing ? Icons.done : Icons.edit;
    var loginStr = stringResource.tab_bar_title_login;
    var title = isEditing
        ? stringResource.edit_title(loginStr)
        : ref.watch(loginInfoContentViewModelProvider.notifier).title;

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
                  stateReading.state = ContentEditState.onlyRead;
                } else {
                  stateReading.state = ContentEditState.editing;
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
    var stringResource = S.of(context);
    var nameStr = stringResource.input_title_name;
    var webUrlStr = stringResource.input_title_web_url;
    var accountStr = stringResource.input_title_account;
    var passwordStr = stringResource.input_title_password;
    var noteStr = stringResource.input_title_note;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            BaseInput(
              title: nameStr,
              hint: stringResource.input_hint(nameStr),
              focusNode: nameFocusNode,
              isEnabled: isEditing,
              onInputChanged: (input) {},
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: webUrlStr,
              hint: stringResource.input_hint(webUrlStr),
              isEnabled: isEditing,
              onInputChanged: (input) {},
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: accountStr,
              hint: stringResource.input_hint(accountStr),
              isEnabled: isEditing,
              onInputChanged: (input) {},
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: passwordStr,
              hint: stringResource.input_hint(passwordStr),
              isEnabled: isEditing,
              onInputChanged: (input) {},
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: noteStr,
              hint: stringResource.input_hint(noteStr),
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
