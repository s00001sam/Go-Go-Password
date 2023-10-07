import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:gogo_password/view/home/home_page.dart';
import 'package:gogo_password/view/loginInfo/login_info_content_page.dart';

const String loginContent = 'loginContent';
const String pathIsEditor = 'isEditor';
const String pathId = 'id';
const String DEFAULT_ID_CREATE = 'create';

final GoRouter myRouter = GoRouter(
  errorBuilder: (context, state) => const Center(),
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          name: loginContent,
          path: '$loginContent/:$pathIsEditor/:$pathId',
          builder: (BuildContext context, GoRouterState state) {
            var isEditorStr = state.pathParameters[pathIsEditor] ?? '';
            var isEditor = bool.tryParse(isEditorStr) ?? false;
            var id = state.pathParameters[pathId] ?? DEFAULT_ID_CREATE;
            return LoginInfoContentPage(isEditor: isEditor, id: id);
          },
        ),
      ],
    ),
  ],
);

void goLoginInfoContent({
  required BuildContext context,
  required bool isEditor,
  String? id = DEFAULT_ID_CREATE,
}) {
  var safetyId = (id == null || id.isEmpty) ? DEFAULT_ID_CREATE : id;

  context.goNamed(
    loginContent,
    pathParameters: {
      pathIsEditor: isEditor.toString(),
      pathId: safetyId,
    },
  );
}
