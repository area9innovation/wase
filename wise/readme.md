# Wise

A high-level language targetting Wasm.

Compared to Wase, it has these changes:

- No memory or data statements. These are automatic
- import works for both globals and functions
- types are more orthogonal, and include functions and tuples, as well as bool
- no loop and block, but rather just while
