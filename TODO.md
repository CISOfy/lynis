
# To Do

There are always thing to do, right?!

Like to help? See CONTRIBUTING.md for more details.

## Remove deprecated tools

Remove usage of `egrep` and `fgrep`. Replace with `grep` or `grep -E`.

### Rationale:
The egrep/fgrep commands are deprecated. Although often linked on Linux distributions, here is an example where `egrep` is missing on an embedded Linux distribution: https://github.com/CISOfy/lynis/issues/1191

[The Open Group Base Specifications Issue 7, 2018 edition](https://pubs.opengroup.org/onlinepubs/9699919799/)

> This grep has been enhanced in an upwards-compatible way to provide the exact functionality of the historical egrep and fgrep commands as well. It was the clear intention of the standard developers to consolidate the three greps into a single command.