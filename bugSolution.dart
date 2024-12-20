```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      // Process jsonData
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } catch (e, stacktrace) {
    print('Error fetching data: $e');
    print('Stacktrace: $stacktrace');
    // Consider more sophisticated error reporting, such as logging to a service or displaying a user-friendly message.
  }
}
```