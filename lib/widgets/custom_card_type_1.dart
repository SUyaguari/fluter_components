import 'package:fluter_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.arrow_forward_ios,
              color: AppTheme.primary,
            ),
            title: Text("SAAAAPOO"),
            subtitle: Text(
                "NO NO NO NONO NO NONO NO NONO NO NONO NO NONO NO NONO NO NONO NO NONO NO NONO NO NONO NO NONO NO NONO NO NONO NO NONO NO NO NO NO"),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(onPressed: () {}, child: const Text('Ok'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
