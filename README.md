## References

Repository: [very_good_coverage](https://github.com/invertase/dart_custom_lint)

Issue: [Allow custom coverage on empty coverage file](https://github.com/VeryGoodOpenSource/very_good_coverage/issues/167)

This sample shows how to resolve the above issue and avoid the workflow from failing when the coverage is empty or not found. See [this modified workflow](.github/workflows/main.yaml) which has the logic that skips the coverage job from executing whenever the lcov is empty or not found.

This [pull request](https://github.com/alestiago/issues/pull/2) shows how the suggested workflow works as intended.
