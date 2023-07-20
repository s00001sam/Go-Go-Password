import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
                      tabs: const [
                        Tab(text: '全部'),
                        Tab(text: '登入'),
                        Tab(text: '銀行'),
                        Tab(text: '筆記'),
                      ],
                    ),
                  ),
                ),
              ),
              const Expanded(
                  child: TabBarView(
                children: [
                  // TODO : 待修改為正式頁面
                  Center(
                    child: Text('全部列表'),
                  ),
                  Center(
                    child: Text('登入列表'),
                  ),
                  Center(
                    child: Text('銀行列表'),
                  ),
                  Center(
                    child: Text('筆記列表'),
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
