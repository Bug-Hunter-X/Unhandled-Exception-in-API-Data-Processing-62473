```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON list
      final data = jsonDecode(response.body) as List<dynamic>;
      // Process the data here, this might cause an error if not handled properly
      for (var item in data) {
        print(item['name']); // potential error if 'name' key doesn't exist 
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately, maybe retry, show an error message etc.
  }
}
```