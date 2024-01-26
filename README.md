## References

Repository: [dart_frog](https://github.com/VeryGoodOpenSource/dart_frog)

Issue: [fix: pre hook script: Null check operator used on a null value](https://github.com/VeryGoodOpenSource/dart_frog/issues/1124)

## 🐛 Reproductive steps

1. Run `dart_frog build` (from sample/):

```sh
dart_frog build
```

2. See the logs:

```txt
✓ Installing dependencies (0.4s)
✓ Bundling sources (13ms)
An exception occurred while executing hook: /Users/alestiago/.mason-cache/bundled/dart_frog_prod_server_0.1.0+1_e4edd283c6291e9406142f96559194db57c10097/hooks/pre_gen.dart.
Error: Null check operator used on a null value
```
