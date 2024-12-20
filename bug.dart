```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final jsonData = json.decode(response.body);
      // Process jsonData
    } else {
      // Handle error response
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error fetching data: $e');
    //This is where the bug might occur. The exception might not contain all the information you need to debug
    //Additional logging or error handling could improve the debugging process
  }
}
```