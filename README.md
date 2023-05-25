## References

Repository: [dart_frog](https://github.com/VeryGoodOpenSource/dart_frog)

Issue: [feat: Mount non-dynamic routes first #631](https://github.com/VeryGoodOpenSource/dart_frog/issues/631)

## 🐛 Reproductive steps

1. Run dart frog developer server:

```dart (from sample/)
dart_frog dev
```

2. Access `http://localhost:8080/api/1`, you should see:

```html
This is a api 1.
```

3. Access `http://localhost:8080/api/sample`, you should see:

```html
This is a api status.
```

But, instead, you should see:

```html
This is a status!
```
