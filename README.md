## References

Repository: [dart_frog](https://github.com/VeryGoodOpenSource/dart_frog)

Issue: [fix: Cannot start two dart_frog instances at the same time](https://github.com/VeryGoodOpenSource/dart_frog/issues/568)

## 🐛 Reproductive steps

1. Open a dev server at port 7100 (from `sample/`)

```sh
dart_frog dev -p 7100
```

2.  Open a dev server at port 7200

```sh
dart_frog dev -p 7200
```

3. Expected to see:

```sh
Could not start the VM service: localhost:8181 is already in use.
```
