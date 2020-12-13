# lint-staged-editorconfig

Test staged files are covered by [editorconfig][] rules using
[lint-staged].

## Quick Start

First, install:

```
$ yarn add -D lint-staged-editorconfig
```

Second, run `lint-staged-editorconfig` under a catch all rule in
`lint-staged`:

```
{
  "lint-staged": {
    "*": "lint-staged-editorconfig"
  }
}
```

Third, create an `.editoconfigignore` to ignore files:

```
$ echo "vendor" >> .editorconfigignore
```

## Why this project?

If a repo uses [editorconfig][], then all files in the repo should be
covered by rule in it. If not, then code style goes out of sync
resulting in confusion among the team.

If a new file is introduced to SCM, then it should be committed unless
covered by editorconfig rules.

So, if uncovered files may be rejected from commits, then it's not
possible to introduce uncovered files into SCM.

This ensures the `.editorconfig` covers all files in SCM and that
teams do not need to rely on ad-hoc configuration of an individuals
editor.

[editorconfig]: https://editorconfig.org
[lint-staged]: https://editorconfig.org
