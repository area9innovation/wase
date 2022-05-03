# Wise

A high-level language targetting Wasm.

Compared to Wase, it has these changes:

- Types are more orthogonal, and include functions and tuples, as well as bool
- Comparisons return bool
- We have || and && operators for boolean or/and with short-circuit semantics
- Syntax "<=u" "<u" ">=u" ">u" syntax for unsigned comparisons
- Introduce "while" with normal break/continue, which always returns "void"
- (); (1, ); (1, 2.0); (1, 2.1, 2) is tuple construction
- (1, 2, 3).0 is tuple indexing
- No memory or data statements. These are automatic

## Development

To compare against the corresponding Wase program, use:

	bin\wised tests/fn.wise debug-lower=1 >out.flow

	bin\wased tests/fn.wase debug-type=1 >out2.flow

## Polymorphism

TODO: Polymorphism on basic types like i32, i64, f32, f64 and tuples of these
that are stackable should be specialized. Polymorphism on other types on the 
heap are always tagged. Maybe this will automatically happen if we represent 
heap objects as tuples.

# Tuples

Tuples are written like this:

	zero : () = ();
	one : (i32) = (1,);
	two : (i32, f64) = (1, 3.141);

These are expanded to multiple lets:

	zero : () = ();
	one_0 : i32 = 1;
	// This is a new construct that initializes multiple lets from a tuple value
	two_0 : i32, two_1 : f64 = (1, 3.141);

When we reference one of these, it should be expanded to a tuple construction:

	one => (one_0)
	two => (two_0, two_1)

When using ., it should be a call to a function, which takes that number of tuples:

	two.0  => dot2(two, 0) => dot2((two_0, two_1), 0) => two_0

When a function takes a tuple argument, it should expand to multiple arguments:

	foo(two : (i32, f64)) -> () {
		...
	}

	=>

	foo(two_0 : i32, two_1 : f64) -> () {
		...
	}

and calls to tuple arguments should just be rewritten to be each member:
	
	two = (1, 3.141);
	foo(two)
=>
	// This is a new construct that initializes multiple lets from a tuple value
	two_0 : i32, two_1 : f64 = (1, 3.141);
	foo(two_0, two_1)

Returning tuples does not require any changes:

	bar() -> (i32, f64) {
		(1, 3.141)
	}

	two = bar();

=>

	bar() -> (i32, f64) {
		(1, 3.141)
	}

	two_0 : i32, two_1 : f64 = bar();

# Plan
- Support tuples as arguments in functions and lets: Expand into multiple locals

- Typedef
- Polymorphism with specialization
- Interface
- Heap
- Polymorphism with generic tagged code
- Closures - lambda lifting
- Problem: How to implement memory allocation of map
- Concept: map will check what interfaces are implemented

## TODO

- Convert first-order function types to i32 in all expressions where possible
- Check short-circuit operations and break/continue
- Add flag to choose target: If we are targetting Wasi, then add memory and export main
- Automatic conversion of "main" to _start for Wasi interfacing. See tests/print.wise
