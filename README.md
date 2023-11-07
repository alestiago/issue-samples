## References

Repository: [archive](https://github.com/brendan-duncan/archive)

Issue: [Allow running custom_lint in packages with different versions](https://github.com/invertase/dart_custom_lint/issues/104)

## 🐛 Reproductive steps

1. Get all packages dependencies:

```sh
# Get project dependencies (from sample/)
dart pub get
```

2. Run the sample code:

```sh
# Run the sample code (from sample/)
dart run lib/sample.dart
```

3. Unzip the `output_zip/output2.zip` and see the nested corrupted zip file.
