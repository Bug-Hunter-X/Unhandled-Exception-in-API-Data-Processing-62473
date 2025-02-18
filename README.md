# Unhandled Exception in API Data Processing

This example showcases a common Dart error: not handling exceptions when accessing nested data structures from an API response. The `fetchData` function fetches data and then iterates, but it doesn't check for the existence of the 'name' key in each item before accessing it. This can lead to runtime errors if the key is missing.

The solution demonstrates how to handle these exceptions using try-catch blocks and optional operators to safely access the nested data.

## How to reproduce:
1. Clone the repo
2. Run `fetchData()`