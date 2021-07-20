
# To Do

There are always thing to do, right?!

Like to help? See CONTRIBUTING.md for more details.

## Remove deprecated tools

Remove usage of `egrep` and `fgrep`. Replace with `grep` or `grep -E`.

Rationale: egrep/fgrep are deprecated. Although often linked on Linux distributions, here is an example where `egrep` is missing on an embedded Linux distribution: https://github.com/CISOfy/lynis/issues/1191
