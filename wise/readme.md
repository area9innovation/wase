# Wise

A high-level language targetting Wasm.

Compared to Wase, it has these changes:

- No memory or data statements. These are automatic
- import works for both globals and functions
- types are more orthogonal, and include functions and tuples, as well as bool
- comparisons return bool
- We have || and && operators for boolean or/and with short-circuit semantics
- Introduce "while" with normal break/continue, which always returns "void"

## TODO

- Fix first-order function use
- Implement import of Wase
- Check short-circuit and break/continue
