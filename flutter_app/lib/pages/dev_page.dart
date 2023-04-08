import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nfc_manager/nfc_manager.dart';
import '../i18n/strings.g.dart';

class DevPage extends StatefulWidget {
  DevPage({super.key});
  final String title = t.dev_menu.title;

  @override
  State<DevPage> createState() => _DevPage();
}

enum NfcState {
  initializing,
  disabled,
  enabled,
}

String getNfcStateName(NfcState state) {
  switch (state) {
    case NfcState.initializing:
      return t.dev_menu.nfc_initializing;
    case NfcState.enabled:
      return t.dev_menu.nfc_enabled;
    case NfcState.disabled:
      return t.dev_menu.nfc_disabled;
  }
}

class _DevPage extends State<DevPage> {
  NfcState _state = NfcState.initializing;
  String _message = '';
  bool _sessionRunning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(getNfcStateName(_state),
                style: const TextStyle(fontSize: 40.0)),
            Visibility(
              visible: _state == NfcState.enabled,
              child: Column(
                children: [
                  ElevatedButton(
                    child: SizedBox(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.search, size: 40.0),
                          Text(t.dev_menu.read,
                              style: const TextStyle(fontSize: 40.0)),
                        ],
                      ),
                    ),
                    onPressed: () => {readNfc()},
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    child: SizedBox(
                      width: 300,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.edit, size: 40.0),
                          Text(t.dev_menu.write,
                              style: const TextStyle(fontSize: 40.0)),
                        ],
                      ),
                    ),
                    onPressed: () => {writeNfc()},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Text(_message),
            const SizedBox(height: 30),
            const Text('作りが適当なのでボタン連続で押さないで'),
          ],
        ),
      ),
      // const Icon(Icons.add)
    );
  }

  @override
  void initState() {
    if (kIsWeb) {
      setState(() {
        _state = NfcState.disabled;
      });
    } else {
      NfcManager.instance.isAvailable().then((isAvailable) {
        setState(() {
          _state = isAvailable ? NfcState.enabled : NfcState.disabled;
        });
      });
    }
    super.initState();
  }

  void readNfc() {
    _sessionRunning = true;
    NfcManager.instance.startSession(onDiscovered: (tag) async {
      final ndef = Ndef.from(tag);
      if (ndef == null) {
        setState(() {
          _message = '${tag.data}';
        });
      } else {
        final data = await ndef.read();
        setState(() {
          _message = utf8.decode(data.records.first.payload).substring(3);
        });
      }
      stopNfc();
    });
  }

  void writeNfc() {
    _sessionRunning = true;
    NfcManager.instance.startSession(onDiscovered: (tag) async {
      final ndef = Ndef.from(tag);
      if (ndef == null || !ndef.isWritable) {
        setState(() {
          _message = '${tag.data}';
        });
      } else {
        try {
          final message = NdefMessage([
            // @see https://pub.dev/packages/nfc_manager/example
            NdefRecord.createText('Woooow'),
          ]);
          await ndef.write(message);
          setState(() {
            _message = 'Write success!';
          });
        } on PlatformException catch (e) {
          setState(() {
            _message = e.message ?? 'Exception';
          });
        }
      }
      stopNfc();
    });
  }

  void stopNfc() {
    if (_sessionRunning) {
      NfcManager.instance.stopSession();
      _sessionRunning = false;
    }
  }

  @override
  void dispose() {
    stopNfc();
    super.dispose();
  }
}
