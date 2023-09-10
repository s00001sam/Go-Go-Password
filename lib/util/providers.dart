import 'package:flutter_riverpod/flutter_riverpod.dart';

enum ContentEditState { onlyRead, editing }

final contentEditStateProvider = StateProvider.autoDispose<ContentEditState>(
  (ref) => ContentEditState.onlyRead,
);
