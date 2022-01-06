import 'package:flutter/material.dart';
import 'package:learnable/widgets/custom_text_form_field.dart';

class Addclass extends StatelessWidget {
  final TextEditingController classIDController = TextEditingController();
  final TextEditingController inviteCodeController = TextEditingController();
  Addclass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {}, child: const Icon(Icons.arrow_back_sharp)),
          title: const Center(child: Text("Join Class")),
          centerTitle: true,
          actions: [SizedBox(width: 48)],
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16, top: 16, right: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextFormField(
                      controller: classIDController, hintText: 'Class ID'),
                  const SizedBox(height: 24),
                  CustomTextFormField(
                      controller: inviteCodeController,
                      hintText: 'Invite Code'),
                  const SizedBox(height: 16),
                ],
              )),
          Padding(
              padding: EdgeInsets.only(left: 16, top: 8, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton(onPressed: () {}, child: Text('CREATE CLASS')),
                  SizedBox(width: 16),
                  ElevatedButton(onPressed: () {}, child: Text('JOIN CLASS'))
                ],
              )),
        ])));
  }
}