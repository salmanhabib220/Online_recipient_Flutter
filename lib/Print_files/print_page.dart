import 'package:bluetooth_print/bluetooth_print.dart';
import 'package:bluetooth_print/bluetooth_print_model.dart';
import 'package:flutter/material.dart';

class PrintPage extends StatefulWidget {
  @override
  _PrintPageState createState() => _PrintPageState();
}

class _PrintPageState extends State<PrintPage> {
  static BluetoothPrint bluetoothPrint = BluetoothPrint.instance;
  List<BluetoothDevice> _devices = [];
  String _devicesMsg = "";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!
        .addPostFrameCallback((context) => initPrinter());
  }

  Future<void> initPrinter() async {
    bluetoothPrint.startScan(timeout: Duration(seconds: 4));

    bluetoothPrint.scanResults.listen(
      (val) async {
        if (!mounted) return;
        setState(() => {_devices = val});
        if (_devices.isEmpty)
          setState(() {
            _devicesMsg = "No Devices";
          });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Printer'),
        backgroundColor: Colors.deepPurple,
      ),
      body: _devices.isEmpty
          ? Center(
              child: Text(_devicesMsg),
            )
          : ListView.builder(
              itemCount: _devices.length,
              itemBuilder: (context, i) {
                return ListTile(
                  leading: Icon(Icons.print),
                  title: Text(_devices[i].name ?? ''),
                  subtitle: Text(_devices[i].address ?? ''),
                  onTap: () {
                    _startPrint(_devices[i]);
                  },
                );
              },
            ),
    );
  }

  Future<void> _startPrint(BluetoothDevice device) async {
    // ignore: unnecessary_null_comparison
    if (device != null && device.address != null) {
      await bluetoothPrint.connect(device);

      List<LineText> list = [];

      list.add(
        LineText(
          type: LineText.TYPE_TEXT,
          content: "Online Store.pk App",
          weight: 2,
          width: 2,
          height: 2,
          align: LineText.ALIGN_CENTER,
          linefeed: 1,
        ),
      );
    }
  }
}
