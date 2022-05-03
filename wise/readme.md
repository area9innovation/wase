# Wise

A high-level language targetting Wasm.

Compared to Wase, it has these changes:

- No memory or data statements. These are automatic
- import works for both globals and functions
- types are more orthogonal, and include functions and tuples, as well as bool
- comparisons return bool
- We have || and && operators for boolean or/and with short-circuit semantics
- <=u <u >=u >u syntax for unsigned comparisons
- Introduce "while" with normal break/continue, which always returns "void"

## TODO

- Convert first-order function types to i32 in all expressions where possible
- Check short-circuit operations and break/continue
- Add flag to choose target: If we are targetting Wasi, then add memory and export main
- Automatic conversion of "main" to _start for Wasi interfacing. See tests/print.wise

## Development

To compare against the corresponding Wase program, use:

	bin\wised tests/fn.wise debug-lower=1 >out.flow

	bin\wased tests/fn.wase debug-type=1 >out2.flow

## Polymorphism

Polymorphism on basic types like i32, i64, f32, f64 that are stackable are
specialized. Polymorphism on other types on the heap are always tagged.

Plan:
- Typedef
- Polymorphism with specialization
- Interface
- Heap
- Polymorphism with generic tagged code
- Closures - lambda lifting
- Problem: How to implement memory allocation of map
- Concept: map will check what interfaces are implemented
