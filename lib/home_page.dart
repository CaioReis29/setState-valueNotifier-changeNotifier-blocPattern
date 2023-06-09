import 'package:flutter/material.dart';
import 'package:set_state/bloc_pattern/bloc_pattern_page.dart';
import 'package:set_state/change_notifier/change_nofifier.dart';
import 'package:set_state/setState/imc_setstate_page.dart';
import 'package:set_state/value_notifier/value_notifier.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToPage(BuildContext context, Widget Page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Page,
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goToPage(context, ImcSetstatePage()), 
              child: Text('SetState')
              ),
            ElevatedButton(
              onPressed: () => _goToPage(context, ValueNotifierPage()), 
              child: Text('ValueNotifier')
              ),
            ElevatedButton(
              onPressed: () => _goToPage(context, ChangeNotifierPage()), 
              child: Text('ChangeNotifier')
              ),
            ElevatedButton(
              onPressed: () => _goToPage(context, BlocPatternPage()), 
              child: Text('Block Pattern (Streams)')
              ),
          ],
        ),
      ),
    );
  }
}
