# Issues

This repository stores reproductive samples of issues present in different codebases. Reproductive **samples are stored in branches**.

## 👨‍💻 Trying it out

To try an issue out I recommend:

```sh
# 🧪 Cloning the repository
git clone https://github.com/alestiago/issues.git

# 🪵 Checking the branch you're interested in
git checkout <branch-name>

# 📖 Reading the README.md of the branch for further instructions
open README.md
```

## 🪵 Branch naming convention

Branches follow the naming convention:

```
<codebase-name>-<issue-number>-YYYYMMDD
```

Where:

- `<codebase-name>` is the name of the GitHub repository that stores the tested codebase.
- `<issue-number>` is the number of the GitHub issue that links to the problem.
- `YYYYMMDD` is the date where the issue was first reproduced in the sample.

For example:

- `very_good_cli-648-20230220` is a valid name. Where the GitHub repository is [very_good_cli](https://github.com/VeryGoodOpenSource/very_good_cli), the issue is [648](https://github.com/VeryGoodOpenSource/very_good_cli/issues/648) and the first date where the sample reproduced the issue was the 20th of February, 2023.

> **Note**: If a particular sample doesn't have a matching issue yet, the branch is named with a leading underscore and the `<issue-number>` is a brief description of its aim.

##

```sh
# from root
dart_frog create my_project
```

```sh
# from root
dart create my_package
```

```sh
dart pub add 'my_package:{"path":"../still_my_package"}'
```

```sh
dart_frog build
```
