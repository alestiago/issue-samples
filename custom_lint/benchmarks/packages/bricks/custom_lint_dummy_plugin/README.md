# custom_lint_dummy_plugin

A mason brick that generates [custom_lint](https://pub.dev/packages/custom_lint) dummy plugins.

These dummy plugins are used to benchmark the [custom_lint](https://pub.dev/packages/custom_lint) in real codebases.

To generate files:

```sh
# 🎯 Activate mason from https://pub.dev
dart pub global activate mason_cli

# 🚀 Retrieve mason bricks (from /packages)
mason get

# 🧱 Generate a dummy plugin (from /packages)
mason make custom_lint_dummy_plugin --on-conflict overwrite
```
