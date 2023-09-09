import 'package:flutter/material.dart';
import 'package:gogo_password/generated/l10n.dart';

class EmptyView extends StatelessWidget {
  final Function()? onTap;

  const EmptyView({required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var stringResource = S.of(context);
    var theme = Theme.of(context);
    var description = stringResource.empty_description;

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
  final bool isMultiLine;
  final bool isEnabled;
  final Function(String)? onInputChanged;

  const BaseInput({
    required this.title,
    required this.hint,
    this.isMultiLine = false,
    required this.isEnabled,
    required this.onInputChanged,
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
          isMultiLine: isMultiLine,
          isEnabled: isEnabled,
          onInputChanged: onInputChanged,
        ),
      ],
    );
  }
}

class BaseInputTextField extends StatefulWidget {
  final String hint;
  final bool isMultiLine;
  final bool isEnabled;
  final Function(String)? onInputChanged;

  const BaseInputTextField({
    required this.hint,
    required this.isMultiLine,
    required this.isEnabled,
    required this.onInputChanged,
    Key? key,
  }) : super(key: key);

  @override
  State<BaseInputTextField> createState() => _BaseInputTextFieldState();
}

class _BaseInputTextFieldState extends State<BaseInputTextField> {
  final _myController = TextEditingController();

  @override
  void initState() {
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

    return TextField(
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
      ),
      style: theme.textTheme.bodyLarge?.copyWith(
        color: theme.colorScheme.primary,
      ),
      controller: _myController,
      enabled: widget.isEnabled,
      maxLines: maxLines,
    );
  }
}
