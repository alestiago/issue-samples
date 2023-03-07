# Issue repository

This repository stores reproductive samples of issues present in different codebases.

Reproductive **samples are stored in branches**.

## 🪵 Branch naming convention

Branches follow the naming convention:

```
<codebase-name>-<issue-number>-YYYYMMDD
```

Where:

- `<codebase-name>` is the name of the GitHub repository that stores the tested codebase.
- `<issue-number>` is the number of the GitHub issue that links to the problem.
- `YYYYMMDD` is the date where the issue was first reproduced in the sample.

For example, a valid branch name would be `very_good_cli-648-20230220`, where the GitHub repository is [very_good_cli](https://github.com/VeryGoodOpenSource/very_good_cli), the issue is [648](https://github.com/VeryGoodOpenSource/very_good_cli/issues/648) and the date where the sample reproduced the issue was on the 20th of February of 2023.
