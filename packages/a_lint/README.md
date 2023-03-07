A dummy custom lint that throws a lint warning whenever a variable starts with a leading `a`.

For example:

```dart
final avar = 10; // not-valid

final myvar = 10; // valid
```

To run the example do (from root):

```sh
cd packages/a_lint/example && dart pub get && dart run custom_lint
```
