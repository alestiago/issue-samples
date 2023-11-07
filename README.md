## References

Repository: [archive](https://github.com/brendan-duncan/archive)

Issue: [fix: nested zipDirectory filename causes zipping corrupted zip](https://github.com/brendan-duncan/archive/issues/297)

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
