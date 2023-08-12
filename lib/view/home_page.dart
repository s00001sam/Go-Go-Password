import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gogo_password/model/base_secure_info.dart';
import 'package:gogo_password/view/common.dart';
import 'package:google_fonts/google_fonts.dart';

import '../generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.primary,
        toolbarHeight: 160.0, // Set this height
        elevation: 0.0,
        flexibleSpace: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              children: [
                HomeTitleRow(),
                SizedBox(height: 28.0),
                SearchBar(),
              ],
            ),
          ),
        ),
      ),
      body: const MyTabBarContainer(),
    );
  }
}

class HomeTitleRow extends StatelessWidget {
  const HomeTitleRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'gogoPassword',
          textScaleFactor: 1.0,
          style: GoogleFonts.righteous(
            textStyle: const TextStyle(
              color: Colors.black87,
              fontSize: 24.0,
            ),
          ),
        ),
        const Spacer(),
        Image.asset(
          "assets/images/ic_plus.png",
          fit: BoxFit.contain,
          width: 24.0,
          height: 24.0,
        ),
        const SizedBox(width: 20.0),
        Image.asset(
          "assets/images/ic_setting.png",
          fit: BoxFit.contain,
          width: 24.0,
          height: 24.0,
        ),
      ],
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    _searchController.addListener(() {});
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      height: 48.0,
      decoration: BoxDecoration(
        color: theme.colorScheme.secondary,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Row(
        children: [
          const SizedBox(width: 12.0),
          Image.asset(
            "assets/images/ic_search.png",
            fit: BoxFit.contain,
            width: 24.0,
            height: 24.0,
            color: theme.colorScheme.onSecondary,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: TextField(
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                color: theme.colorScheme.onSecondary,
              ),
              maxLines: 1,
              controller: _searchController,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}

class MyTabBarContainer extends StatelessWidget {
  const MyTabBarContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var stringResource = S.of(context);

    return Center(
      child: DefaultTabController(
        length: 4,
        child: Container(
          color: theme.colorScheme.surface,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 16.0,
                ),
                child: Container(
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondary,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TabBar(
                      indicator: BoxDecoration(
                        color: theme.colorScheme.onSecondary,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.black87,
                      tabs: [
                        Tab(text: stringResource.tab_bar_title_all),
                        Tab(text: stringResource.tab_bar_title_login),
                        Tab(text: stringResource.tab_bar_title_bank),
                        Tab(text: stringResource.tab_bar_title_note),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  // All
                  Center(
                    child: SecureInfosPage(secureInfos: const []),
                  ),
                  // Login
                  Center(
                    child: SecureInfosPage(secureInfos: const []),
                  ),
                  // Bank
                  Center(
                    child: SecureInfosPage(secureInfos: const []),
                  ),
                  // Notes
                  Center(
                    child: SecureInfosPage(secureInfos: const []),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class SecureInfosPage extends StatelessWidget {
  List<BaseSecureInfo> secureInfos;

  SecureInfosPage({
    required this.secureInfos,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int count = secureInfos.length;
    if (count <= 0) return EmptyView(onTap: () {});
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SecureInfoTitle(count: count),
          Expanded(
            child: ListView.builder(
              itemCount: count,
              itemBuilder: (BuildContext context, int index) {
                if (secureInfos.isEmpty) return const Center();
                var item = secureInfos[index];
                return SecureInfoItem(secureInfo: item);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SecureInfoTitle extends StatelessWidget {
  int count;

  SecureInfoTitle({required this.count, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var stringResource = S.of(context);
    var theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, left: 4.0, right: 4.0),
      child: Row(
        children: [
          Text(
            stringResource.secure_info_total_count(count), // sam00 100
            style: theme.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.normal,
              color: theme.colorScheme.onSurface,
            ),
          ),
          const Spacer(),
          Image.asset(
            "assets/images/ic_sort_time_normal.png",
            fit: BoxFit.contain,
            width: 24.0,
            height: 24.0,
            color: theme.colorScheme.onSurface,
          ),
        ],
      ),
    );
  }
}

class SecureInfoItem extends StatelessWidget {
  BaseSecureInfo secureInfo;

  SecureInfoItem({
    required this.secureInfo,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CachedNetworkImage(
            width: 50.0,
            height: 50.0,
            fit: BoxFit.fill,
            imageUrl: secureInfo.imageUrl,
            placeholder: (context, url) => Container(color: Colors.black12),
          ),
          const SizedBox(width: 24.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                secureInfo.title,
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 12.0),
              Text(
                secureInfo.description,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          )
        ],
      ),
    );
  }
}
