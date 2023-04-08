import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
          children: <Widget>[
            Text(getNfcStateName(_state),
                style: const TextStyle(fontSize: 40.0)),
            Visibility(
              visible: _state == NfcState.enabled,
              child: TextButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.search, size: 40.0),
                    Text(t.dev_menu.read,
                        style: const TextStyle(fontSize: 40.0)),
                  ],
                ),
                onPressed: () => {readNfc()},
              ),
            ),
            Text(_message),
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
    NfcManager.instance.startSession(onDiscovered: (tag) async {
      setState(() {
        _sessionRunning = true;
        _message = '${tag.data}';
      });
    });
  }

  @override
  void dispose() {
    if (_sessionRunning) {
      NfcManager.instance.stopSession();
      _sessionRunning = false;
    }
    super.dispose();
  }
}
