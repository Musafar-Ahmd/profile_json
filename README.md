Here's a **README** description for fetching data from a local file in Flutter:  

---

# **Fetching Data from a Local File in Flutter**  

This guide explains how to read data from a local JSON file in a Flutter application.  

## **Steps to Fetch Data from a Local File**  

### **1. Add the JSON File to the Assets**  
Place your JSON file inside the `assets` folder (e.g., `assets/data.json`).  

### **2. Declare Assets in `pubspec.yaml`**  
Open `pubspec.yaml` and add:  

```yaml
flutter:
  assets:
    - assets/data.json
```

### **3. Load JSON Data from the Local File**  

Use `rootBundle` to read the file:  

```dart
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<Map<String, dynamic>> loadJsonData() async {
  final String jsonString = await rootBundle.loadString('assets/data.json');
  return json.decode(jsonString);
}
```

### **4. Call the Function in Your Widget**  

```dart
import 'package:flutter/material.dart';

class LocalDataScreen extends StatefulWidget {
  @override
  _LocalDataScreenState createState() => _LocalDataScreenState();
}

class _LocalDataScreenState extends State<LocalDataScreen> {
  Map<String, dynamic>? jsonData;

  @override
  void initState() {
    super.initState();
    loadJson();
  }

  void loadJson() async {
    final data = await loadJsonData();
    setState(() {
      jsonData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Local JSON Data")),
      body: jsonData == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Data: ${jsonData.toString()}"),
            ),
    );
  }
}
```

### **5. Run the App**  
Execute the following command in the terminal:  

```sh
flutter run
```

## **Conclusion**  
By following these steps, you can successfully read and use local JSON data in your Flutter application. 🚀
