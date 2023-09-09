import 'package:flutter/material.dart';
import 'package:gogo_password/generated/l10n.dart';
import 'package:gogo_password/view/common.dart';

class LoginInfoContentPage extends StatelessWidget {
  final LoginInfoContentBody? info;

  const LoginInfoContentPage({required this.info, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var stringResource = S.of(context);
    var loginStr = stringResource.tab_bar_title_login;
    var title = stringResource.edit_title(loginStr);
    return Scaffold(
      appBar: BaseAppBar(
        title: title,
        actions: [
          IconButton(
            icon: const Icon(Icons.done),
            tooltip: 'change editable mode',
            onPressed: () {},
          ),
        ],
      ),
      body: const LoginInfoContentBody(),
    );
  }
}

class LoginInfoContentBody extends StatelessWidget {
  const LoginInfoContentBody({Key? key}) : super(key: key);

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
              isEnabled: true,
              onInputChanged: (input) {},
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: webUrlStr,
              hint: stringResource.input_hint(webUrlStr),
              isEnabled: true,
              onInputChanged: (input) {},
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: accountStr,
              hint: stringResource.input_hint(accountStr),
              isEnabled: true,
              onInputChanged: (input) {},
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: passwordStr,
              hint: stringResource.input_hint(passwordStr),
              isEnabled: true,
              onInputChanged: (input) {},
            ),
            const SizedBox(height: 12.0),
            BaseInput(
              title: noteStr,
              hint: stringResource.input_hint(noteStr),
              isMultiLine: true,
              isEnabled: true,
              onInputChanged: (input) {},
            ),
          ],
        ),
      ),
    );
  }
}
