import 'package:flutter/material.dart';
import 'package:gogo_password/generated/l10n.dart';

class EmptyView extends StatelessWidget {
  final Function()? onTap;

  const EmptyView({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var stringRes = S.of(context);
    var theme = Theme.of(context);
    var description = stringRes.empty_description;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            description,
            style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 32.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.secondary,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(16.0),
            ),
            onPressed: onTap,
            child: Image.asset(
              "assets/images/ic_plus.png",
              fit: BoxFit.contain,
              width: 24.0,
              height: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function()? onBackListener;
  final List<Widget>? actions;

  const BaseAppBar({
    required this.title,
    this.actions,
    this.onBackListener,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AppBar(
      backgroundColor: theme.colorScheme.primary,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: theme.colorScheme.onPrimary,
        ),
        onPressed: () {
          onBackListener?.call();
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        title,
        style: theme.textTheme.headlineLarge?.copyWith(
          color: theme.colorScheme.onPrimary,
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}

class BaseInput extends StatelessWidget {
  final String title;
  final String hint;

  // final String defaultText;
  final FocusNode? focusNode;
  final bool isMultiLine;
  final bool isEnabled;
  final bool isPassword;
  final TextEditingController textController;
  final Function(String)? onInputChanged;

  const BaseInput({
    required this.title,
    this.hint = '',
    // this.defaultText = '',
    this.focusNode,
    this.isMultiLine = false,
    required this.isEnabled,
    this.isPassword = false,
    required this.textController,
    this.onInputChanged,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: theme.textTheme.headlineLarge?.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 12.0),
        BaseInputTextField(
          hint: hint,
          // defaultText: defaultText,
          focusNode: focusNode,
          isMultiLine: isMultiLine,
          isEnabled: isEnabled,
          isPassword: isPassword,
          textController: textController,
          onInputChanged: onInputChanged,
        ),
      ],
    );
  }
}

class BaseInputTextField extends StatefulWidget {
  final String hint;

  // final String defaultText;
  final FocusNode? focusNode;
  final bool isMultiLine;
  final bool isEnabled;
  final bool isPassword;
  final TextEditingController textController;
  final Function(String)? onInputChanged;

  const BaseInputTextField({
    required this.hint,
    // required this.defaultText,
    this.focusNode,
    required this.isMultiLine,
    required this.isEnabled,
    required this.isPassword,
    required this.textController,
    required this.onInputChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<BaseInputTextField> createState() => _BaseInputTextFieldState();
}

class _BaseInputTextFieldState extends State<BaseInputTextField> {
  late final TextEditingController _myController = widget.textController;
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = false;
    _myController.addListener(() {
      var input = _myController.text;
      debugPrint('input = $input');
      widget.onInputChanged?.call(input);
    });
    super.initState();
  }

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var normalBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),
    );
    var focusBorder = const OutlineInputBorder().copyWith(
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      borderSide: BorderSide(
        color: theme.colorScheme.primary,
      ),
    );
    var enableBorder = const OutlineInputBorder().copyWith(
      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      borderSide: const BorderSide(
        color: Colors.black38,
      ),
    );
    var maxLines = widget.isMultiLine ? null : 1;
    var isTextVisible = !widget.isPassword || _passwordVisible;
    var passwordSuffix = const Icon(
      Icons.visibility,
      color: Colors.transparent,
    );
    var passwordEyeButtonOrEmpty = widget.isPassword
        ? IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: theme.colorScheme.primary,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
            splashColor: Colors.transparent,
          )
        : const SizedBox();

    return Stack(
      alignment: Alignment.centerRight,
      children: [
        TextField(
          decoration: InputDecoration(
            border: normalBorder,
            hintText: widget.hint,
            hintStyle: theme.textTheme.bodyLarge?.copyWith(
              color: Colors.black38,
            ),
            fillColor: theme.colorScheme.secondary,
            filled: true,
            focusedBorder: focusBorder,
            enabledBorder: enableBorder,
            suffixIcon: widget.isPassword ? passwordSuffix : const SizedBox(),
          ),
          style: theme.textTheme.bodyLarge?.copyWith(
            color: theme.colorScheme.primary,
          ),
          controller: _myController,
          enabled: widget.isEnabled,
          maxLines: maxLines,
          focusNode: widget.focusNode,
          obscureText: !isTextVisible,
          enableInteractiveSelection: false,
        ),
        passwordEyeButtonOrEmpty,
      ],
    );
  }
}

class ErrorView extends StatelessWidget {
  final String error;

  const ErrorView({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}

class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
