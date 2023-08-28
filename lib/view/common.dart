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
  String title;
  final Function()? onBackListener;

  BaseAppBar({required this.title, this.onBackListener, Key? key}) : super(key: key);

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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
