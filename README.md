## References

Repository: [dart_custom_lint](https://github.com/invertase/dart_custom_lint)

Issue: [issue](https://github.com/invertase/dart_custom_lint/issues/102)

## 🐛 Reproductive steps

1. Get all packages dependencies:

```sh
# (run from the root of this project)
cd packages/a_lint && dart pub get &&
cd ../../sample/packages/special_widget && flutter pub get &&
cd ../../ && flutter pub get &&
cd ../
```

2. Run `custom_lint`:

```sh
# (run from the root of this project)
cd sample && flutter pub run custom_lint
```

You should expect an error. The error can be resolved by updating the versioning of `bloc` in `sample/` and `sample/packages/special_widget` to match each other.
