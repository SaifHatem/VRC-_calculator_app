import 'package:flutter/material.dart';
import 'package:vrc_app/models/vrc_model.dart';
import 'package:vrc_app/widgets/cutom_text_field.dart';

class VRCView extends StatefulWidget {
  const VRCView({super.key});

  @override
  State<VRCView> createState() => _VRCViewState();
}

class _VRCViewState extends State<VRCView> {
  TextEditingController bitsController = TextEditingController();
  TextEditingController tybeController = TextEditingController();

  bool? ismMessegeCorrect;
  CheckMessage checkMessage = CheckMessage();

  _VRCViewState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'VRC Checker',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            CUstomTextField(
              tybeController: bitsController,
              text: 'Enter your message',
            ),
            const SizedBox(
              height: 20,
            ),
            CUstomTextField(
              tybeController: tybeController,
              text: '(epc) or (opc)',
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ismMessegeCorrect = checkMessage.checkMessage(
                      bitsController.text.split(''),
                      tybeController.text.toLowerCase());
                });
              },
              child: const Text('Check Meesage'),
            ),
            const SizedBox(
              height: 20,
            ),
            ismMessegeCorrect == null
                ? Container()
                : ismMessegeCorrect!
                    ? const Text(
                        "Message is corrct",
                        style: TextStyle(color: Colors.green, fontSize: 25),
                      )
                    : const Text(
                        "Message is False",
                        style: TextStyle(color: Colors.red, fontSize: 25),
                      )
          ],
        ),
      ),
    );
  }
}
