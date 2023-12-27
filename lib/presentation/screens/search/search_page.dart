import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honeybee/application/search_page/search_page_bloc.dart';
import 'package:honeybee/presentation/screens/liked_users/liked_users_page.dart';
import 'package:honeybee/presentation/widgets/search_widget/search_widget.dart';
import 'package:honeybee/presentation/widgets/textform_widgets/custom_textformfield.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
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
                // BorderlineButton(
                //     icon: Icons.tune,
                //     onpressed: () {
                //       showModalBottomSheet(
                //         context: context,
                //         builder: (BuildContext context) {
                //           return const CustomModalBottomSheet();
                //         },
                //       );
                //     }),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          CustomTextFormFiled(
            // text: '',
            editController: _controllerValue,
            buttonOnTap: () {
              BlocProvider.of<SearchPageBloc>(context)
                  .add(SearchPageEvent.searchData(_controllerValue.text));
            },
            onChanged: (value) {},
            icon: Icons.search,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          SearchWidget()
        ],
      ),
    );
  }
}
