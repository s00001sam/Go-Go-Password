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
        toolbarHeight: 160, // Set this height
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
      body: const Center(),
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
          borderRadius: const BorderRadius.all(Radius.circular(8.0))),
      child: Row(
        children: [
          const SizedBox(width: 12.0),
          Image.asset(
            "assets/images/ic_search.png",
            fit: BoxFit.contain,
            width: 24.0,
            height: 24.0,
            color: theme.colorScheme.primary,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: TextField(
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                color: theme.colorScheme.primary,
              ),
              maxLines: 1,
              controller: _searchController,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(border: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
