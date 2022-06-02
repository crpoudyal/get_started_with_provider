import 'package:flutter/material.dart';
import 'package:get_started_with_provider/providers/home_page_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Check Odd Even"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: ChangeNotifierProvider<HomePageProvider>(
                create: (context) => HomePageProvider(),
                child: Consumer<HomePageProvider>(
                  builder: (context, provider, child) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                              hintText: "Enter any number"),
                          onChanged: (val) {
                            provider.checkOddEven(int.parse(val));
                          },
                        ),
                        Text(
                          provider.msg.toString(),
                          style: TextStyle(
                              color: provider.isEven == true
                                  ? Colors.green
                                  : Colors.blue),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
