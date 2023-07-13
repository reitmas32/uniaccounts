// ignore: file_names
import 'package:flutter/material.dart';
import 'package:uniaccounts/ui/theme_preference.dart';
import 'package:uniaccounts/ui/widgets/appbar/button_image.dart';
import 'package:uniaccounts/ui/widgets/appbar/theme_button.dart';

class UnicaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const UnicaAppBar({super.key, this.route = ''});

  final String? route;

  List<Widget> getActions(double width, BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    List<Widget> _actions = [];

    _actions.add(const SizedBox(
      width: 40.0,
    ));
    _actions.add(
      const ThemeButton(
        nameTheme: ThemePreference.LIGHT,
      ),
    );
    _actions.add(
      const ThemeButton(
        nameTheme: ThemePreference.DARK,
      ),
    );
    _actions.add(
      const SizedBox(
        width: 40.0,
      ),
    );

    return _actions;
  }

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      actions: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: getActions(MediaQuery.of(context).size.width, context))
      ],
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ButtonImage(
                url: '/',
                imageUrl:
                    'https://raw.githubusercontent.com/reitmas32/unica_cybercoffee/main/public/assets/unica_logo.jpeg',
              ),
              SizedBox(
                width: 30,
              ),
              Text('UNIAccounts'),
            ],
          ),
          SizedBox(
            width: 30,
          ),

          //ButtonAppBar(lable: 'About'),
        ],
      ),
      toolbarHeight: MediaQuery.of(context).size.height / 12,
      //toolbarHeight: MediaQuery.of(context).size.height / 12,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}
