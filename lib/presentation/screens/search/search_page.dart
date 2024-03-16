import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/search_page/search_page_bloc.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/widgets/customModalBottomSheet/custom_modal_bottom_sheet.dart';
import 'package:honeybee/presentation/widgets/search_widget/search_widget.dart';
import 'package:honeybee/presentation/widgets/textform_widgets/custom_textformfield.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _controllerValue = TextEditingController();
  String age = '100';
  Timer? _debounce;

  @override
  void dispose() {
    _controllerValue.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    if (query.isNotEmpty) {
      _debounce = Timer(const Duration(milliseconds: 1000), () {
        log('Searching for: $query');
        BlocProvider.of<SearchPageBloc>(context)
            .add(SearchPageEvent.searchData(_controllerValue.text, age));
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height * 0.05,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BorderlineButton(
                    icon: Icons.arrow_back_ios_new,
                    onpressed: () {
                      Navigator.pop(context);
                    }),
                BorderlineButton(
                    icon: Icons.tune,
                    onpressed: () async {
                      final selectedAge = await showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return const CustomModalBottomSheet();
                        },
                      );

                      setState(() {
                        age = selectedAge ?? '100';
                      });

                    }),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          CustomTextFormFiled(
            editController: _controllerValue,
            buttonOnTap: () {
            },
            onChanged: (value) {
              _onSearchChanged(value);
            },
            icon: Icons.search,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          const SearchWidget()
        ],
      ),
    );
  }
}
