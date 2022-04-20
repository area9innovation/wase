# Wise

A high-level language targetting Wasm.

Compared to Wase, it has these changes:

- No memory or data statements. These are automatic
- import works for both globals and functions
- types are more orthogonal, and include functions and tuples, as well as bool
- comparisons return bool, there is || and && for boolean or/and
- no loop and block, but rather just while


## TODO

- Implement while
- Fix first-order function use
- Make boolean and/or short-circuit
