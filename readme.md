# Wase - a friendly, low-level language for Wasm

- [Wase - a friendly, low-level language for Wasm](#wase---a-friendly-low-level-language-for-wasm)
	- [Introduction](#introduction)
	- [Usage](#usage)
	- [Example](#example)
	- [Status](#status)
- [The Wase Programming Language](#the-wase-programming-language)
	- [Type system](#type-system)
	- [Top-level Syntax](#top-level-syntax)
	- [Global syntax](#global-syntax)
	- [Function syntax](#function-syntax)
	- [Include](#include)
- [Expressions](#expressions)
	- [Control flow](#control-flow)
	- [Blocks](#blocks)
	- [Low level instructions](#low-level-instructions)
	- [Load/store](#loadstore)
- [Instructions](#instructions)
	- [Control instructions](#control-instructions)
	- [Reference Instructions](#reference-instructions)
	- [Parametric Instructions](#parametric-instructions)
	- [Variable Instructions](#variable-instructions)
	- [Table Instructions](#table-instructions)
	- [Memory Instructions](#memory-instructions)
	- [Numeric Instructions](#numeric-instructions)
	- [**Vector Instructions**](#vector-instructions)
- [Wasm Sections](#wasm-sections)
	- [Imports of globals and functions](#imports-of-globals-and-functions)
	- [Memory](#memory)
	- [Data](#data)
	- [Tables](#tables)
- [Standard library](#standard-library)
- [Development](#development)
	- [Implementation notes](#implementation-notes)
	- [TODOS](#todos)

## Introduction

Make WebAssembly Easy. WASE is a language, which tries to make WASM easy to write
directly. The language maps closely to WebAssembly, and compiles directly to Wasm 
bytecode. As such, it can be seen as an alternative to the WAT text format,
but it is easier to use because of these things:

- It uses more conventional syntax rather than S-expr
- It has type inference
- It handles all the index and table business for you

The language is strongly typed, lexically scoped, and provides direct access 
to memory through load/stores. This is a low-level language without real data 
structures, lambdas/closures, nor memory management, but those can be written
in this language.

The language is designed to expose the low-level flexibility of Wasm directly
but in a friendly manner, which hides most of the complexity of the Wasm format.

It is intended to be used as for low-level Wasm programs, such as language
runtimes (memory allocations) for higher-level languages, or as a target 
for languages that want to compile directly to Wasm. It also helps explain 
how Wasm works by hiding some of the low-level details so the structure and
semantics are clarified.

## Usage

To compile a `tests/euler1.wase` program to `tests/euler1.wasm`, clone this repository
and then use

	bin\wase tests/euler1.wase

This requires a suitable Java Runtime in your path.

You can also consider to add `wase/bin` to your path.

You can also run it directly using java:

	java -jar bin\wase.jar tests/euler1.-wase

## Example

Here is a solution to the Project Euler challenge 1 (https://projecteuler.net/problem=1)
written in Wase:

	// This includes Wasi imports and a printi32 helper
	include lib/runtime;

	// For Wasi, we have to export the memory
	export memory 1;

	// Iterative version using a loop
	euler1Loop(limit : i32) -> i32 {
		start = 1;
		acc = 0;
		loop {
			// Breaks out of the function when start >= limit with the value acc
			break_if<1>(acc, start >= limit);
			if (start % 3 == 0 | start % 5 == 0) {
				acc := acc + start;
			};
			start := start + 1;
			// This is really continue and loops
			break<>();
		};
		// This is never reached, but we have to add this to get the right type
		acc
	}

	// A recursive implementation
	foldRange(start : i32, end : i32, acc : i32) -> i32 {
		if (start <= end) {
			foldRange(start + 1, end, if (start % 3 == 0 | start % 5 == 0) {
				acc + start;
			} else acc)
		} else {
			acc;
		}
	}

	euler1(limit : i32) -> i32 {
		foldRange(1, limit - 1, 0);
	}

	// Wasi expects us to have a "_start" function exported
	export _start() -> () {
		printi32(euler1Loop(1000)); // Correct: 233168
		printByte(10); // New line
		printi32(euler1(1000)); // Correct: 233168
		printByte(10); // New line
		{}
	}

Compile with

	bin\wase tests/euler1.wase

and run with

	wasmer tests/euler1.wasm
	233168
	233168

You can also run with wasm3, but it does not have as deep a stack, so the 
recursion above causes a stack overflow unless you provide a bigger stack to
wasm3.

## Status

Early beta. The compiler works, and the compiler can parse, type and compile 
most instructions directly to WASM binaries that validate and run correctly.

The most important missing instruction is `call_indirect`, the second most important
is arguably `br_table`, plus all vector instructions.

One problem in daily use is that error messages are currently without positions.

This compiler is not validating. For example, you can use dynamic code in constant
contexts, which will be rejected by the Wasm runtime.

Join the flow9 discord, which also hosts discussions on Wase:

	https://discord.gg/9gGJu6KU

# The Wase Programming Language

## Type system

Wase supports the types of Wasm:

	i32, i64, f32, f64, v128, func, extern

At compile time, however, the compiler uses the real types for functions to ensure type
checking is complete. The syntax for functions is like this:

	// A function that takes an i32 and a f64, and returns a i32
	foo(i32, f64) -> i32 { 42 }
	
	// Does not take any arguments, does not return anything
	foo() -> () { }

	// Multi-values is supported with this syntax: This function returns both an i32 and a f64
	foo(i32) -> (i32, f64) { 
		[ 42, 3.141 ]
	}

As a special type, there is also `auto`, where the type will be inferred by
the compiler: 

	// The return type of this function is inferred to be "i32"
	bar() -> auto {
		1;
	}

This also works for locals:

	bar() -> auto {
		a : auto = 1;
		b = 2.0; // This is implicitly auto, and thus inferred
		a
	}

The type inference is based on Hindley-Milner style unification, so it should be robust.

You can use explicit type annotations to verify types:

	foo() -> auto {
		bar : i32
	}

There are no implicit type conversions.

## Top-level Syntax

At the top-level, we have syntax for the different kinds of sections in
Wasm. This includes globals, functions, imports, tables and data.

The compiler will reorder the top-level, so imports, tables, memory and data
come first in the original order, and then after that, globals and functions
in their original order, in accordance with Wasm requirements.

## Global syntax

The grammar for globals is like this:

	// Constant global
	<id> : <type> = <expr>;

	// Mutable global
	<id> : mutable <type> = <expr>;

	// Exported global
	export <id> : <type> = <expr>;

	// Exported mutable global
	export <id> : mutable <type> = <expr>;

Some examples:

	pi : f64 = 3.14159265359;
	counter : mutable i32 = 0;
	// Exports this global to the host with the name "secret"
	export secret : i32 = 0xdeadbeaf;
	// Exports this mutable global with the name "changes"
	export changes : mutable f64 = 1.023;
	// Exports this global to the host with the name "external"
	export "external" internal : i32 = 1;

## Function syntax

	// Functions
	foo(arg : i32) -> i32 {
		a : i32 = 1;
		a + arg
	}

	// This function is exported to the host using the name "foo"
	export foo(arg : i32) -> i32 {
		arg
	}

	// Exports this function using the "_start" name to the host, in compliance with Wasi
	export "_start" start() -> () {
		...
	}

	main() -> () {
		// This is the initial function automatically called otherwise
		...
	}

If the program contains a function called `main`, it is marked as the
function that starts the program.

## Include

Wase code can be split into multiple files, and included using this syntax at the
top-level:

	include lib/runtime;

The compiler will read the file `wase/lib/runtime.wase`, parse it, and splice the 
result into that place in the code. If a file is included more than once (also 
transitively), it is only included the first occurrence.

The program is only type checked after includes are resolved.

# Expressions

The body of globals and functions are expressions. There are no
statements, but only expressions. The syntax is close to the
typescript family:

	h32 : i32 = 1;	// Int constants are i32
	h32 : i32 = 0xDEADBEEF; // Hex notation

	h64 : i64 = 1w; // w suffix for i64
	h64 : i64 = 0x12345678DEADBEEFw; // Hex notation with suffix w for i64

	fl32 : f32 = 0xDEADBEEFn; // Binary representation

	fl64 : f64 = 10.0; // Floats are f64 by default
	fl64 : f64 = 0x2345678DEADBEEFh; // Binary representation

	// Let-binding have scope
	a : i32 = 1;
	<scope> // "a" is defined in this scope

	a := 2; // set local or global

	// Arithmetic, all signed.
	1 + 2 / 3 * 4 % 5

	// f64 arithmetic
	23.4 + 2.3 * 3.141

	// Bitwise operations
	1 & 3 | 5 ^ 7

	// Comparisons are signed. Use instructions for unsigned comparisons
	1 < 5 | 5 >= 2 & a == 2.0 & lt_u<>(b, c) 
	
	// Tuples, aka multi-values
	[1, 2.0, 45]

## Control flow

	// Function call
	foo(1, 2) 

	if (a) b else c;
	if (a) b;

	// Sequence
	{
		a();	// An implicit drop is added here
		b();	// An implicit drop is added here
		[1, 2];  // Two implicit drops are added here
		c
	}

	// Return from the function.
	foo() -> i32 {
		if (early) {
			return 1;	 // Has to match function return type
		}
		code;
	}
	bar() -> () {
		if (early) {
			// Matches no result from function return type
			return;
		}
		code
	}

## Blocks

Wasm uses blocks for control flow. Each function introduces a block.
The `block` and `loop` constructs also do that, as well as the `then`
and `else` branches of `if`. The `break` and `break_if` instructions
refer to this stack of blocks. A break with level 0 breaks out of the
inner most block, while `break<1>()` breaks out of the next level.

	block {
		code;
		// This breaks to the end of the block
		break_if<>(earlyStop);
		code;
	}

	loop {
		code;
		// In loops, the break goes to the top of the loop,
		// so this is an infinite loop
		break<>();
	}

	foo() -> () {
		loop {
			code;
			// This breaks out of the function
			break_if<1>(stopCondition);
			// This is really continue
			break<>();
		}
	}

	foo () -> f64 {
		loop {
			// Here, the break returns 3.141 from the function
			// since block one level up is the function, which
			// returns f64
			break_if<1>(3.141, earlyStop)
		}
	}

	// Here is a simple do-while loop, which prints from 1 to 10 and then F,
	// but not E.
	block {
		i = 1;
		loop {
			printi32(i);
			printByte(10);
			i := i + 1;
			// This breaks out of the upper loop
			break_if<1>(i > 10);
			// This is really continue inside this loop
			break<>();
		};
		// Never reached "E"
		printByte(69);
		{}
	};
	// This is "F"
	printByte(70);

## Low level instructions

The low-level instructions in Wase have the form

	instruction<pars>(args)

where pars are parameters for the operation decided at compile time,
while args are arguments to the instruction put on the stack.

The instruction has the same name as the corresponding Wasm WAT format.

## Load/store

Loads from memory are written like this:

	load<>(index);

The width of the load is inferred from the use of the value.

	// This is i32 load, since a is i32
	a : i23 = load<>(0);

	// This is f32 load, since f is f32
	f : f32 = load<>(32):

Stores are written like this:

	store<>(index, value);

The width of the store is inferred from the type of the value.

	// This is f64.store, because 2.0 is f64
	store<>(32, 2.0);

Loads and stores also exist in versions that work with smaller bit-widths:

	// Loads a byte from the given memory address, sign extending it into a i32 or i64
	signedByteValue : i32 = load8_s<>(0);
	signedByteValue64 : i64 = load8_s<>(0);

	// Loads an unsigned byte from the given memory address into a i32 or i64
	byteValue : i32 = load8_u<>(0);
	byteValue64 : i64 = load8_u<>(0);

	sword : i32 = load16_s<>(0);
	sword64 : i64 = load16_s<>(0);
	uword : i32 = load16_u<>(0);
	uword64 : i64 = load16_u<>(0);

	sint32 : i64 = load32_s<>(0);
	uint32 : i64 = load32_u<>(0);

	// Stores the byte "32" at address 0
	store8<>(0, 32)

	// The same, except it comes from an i64
	int64 : i64 = big;
	store8<>(0, big); // Only picks the lower 8 bits of "big"

	// Stores the lower 16 bits of the value at the given address
	store16<>(address, value);

	// Stores the lower 32 bits of the value at the given address
	store32<>(address, value);

You can also define the offset and alignment explicitly:

	load<offset>(index)
	load<offset, align>(index)
	store<offset>(index, value)
	store<offset, alignment>(index, value)

The alignment is expressed as what power of 2 to use:

	v : i32 = load8_u<0, 0>(i) // aligment at 1 byte
	v : i32 = load16_u<0, 1>(i) // aligment at 2 bytes
	v : i32 = load32_u<0, 2>(i) // aligment at 4 bytes
	v : i64 = load_u<0, 3>(i) // aligment at 8 bytes

# Instructions

6 instructions plus all v128 SIMD instructions are not implemented yet:

	call_indirect and br_table
	table.init and elem.drop
	memory.init and data.drop

## Control instructions

call_indirect and br_table not implemented yet.

| Wasm | Wase | Comments |
|-|-|-|
| `block` | `block { exp }`| Type is inferred
| `loop` | `loop { exp }` | Type is inferred
| `if` | `if (cond) exp` | Type is inferred
| `ifelse` | `if (cond) exp else exp` | Type is inferred
| `unreachable` | `unreachable<>()` |
| `nop` | `nop<>()` | No operation
| `br` | `break<>()` or `break<int>()` or `break<>(val)`or `break<int>(val)` |  Default break level is 0. If there is a val, that is what we return with this break
| `br_if` | `break_if<int>(cond)` or `break_if<>(cond)` or `break_if<int>(val, cond)` or `break_if<>(val, cond)` | Default break level is 0. If there is a val, that is what the break returns
| `br_table` | TODO |
| `return` | `return` or `return exp` |
| `call` | `fn(args)` |
| `call_indirect` | `call_indirect<>(fnidx<id>(), args)` | - | TODO

## Reference Instructions

| Wasm | Wase | Comments |
|-|-|-|
| `ref.null` | `ref.null<func>()` or `ref_null<extern>()` | Construct a null function or extern reference
| `ref.is_null` | `exp is null` | Is this function or extern reference null?
| `ref.func` | `ref.func<id>` | Constructs an opaque reference to a named function. Can be used in tables. Automatically constructs a element table for the referenced functions

##  Parametric Instructions

| Wasm | Wase | Comments |
|-|-|-|
| `drop` | `drop<>` or implicit in sequence `{1;2}` | The explicit `drop<>()` variant causes stack errors, since Wase is designed to be stack-safe.
| `select` | `select<>(cond, then, else)` | This is an eager `if`, where both `then` and `else` are always evaluated, but only one chosen based on the condition. This is branch-less so can be more efficient than normal `if`. (Automatically chooses the ref instruction version based on the type.)

## Variable Instructions

| Wasm | Wase | Comments |
|-|-|-|
| `local.get` | `id`
| `local.set` | `id := exp`
| `local.tee` | `id ::= exp` | Sets the value like `local.set`, but returns the result as well, like in C
| `global.get` | `id`
| `global.set` | `id := exp`

## Table Instructions

table.init and elem.drop not implemented yet. Requires elements first.

| Wasm | Wase| Comments |
|-|-|-|
| `table.get` | `table.get<id>(index : i32)` | Retrieves a value from a table slot. The id the name of a table given by import.table
| `table.set` | `table.set<id>(index : i32, value : func/extern)` | Sets a value in a table slot.
| `table.size` | `table.size<id>()` | Returns the size of a table.
| `table.grow` | `table.grow<id>(init, size)` | Changes the size of a table, initializing with the `init` value in empty slots. Returns previous size.
| `table.copy` | `table.copy<id1, id2>(elems : i32, source : i32, dest : i32)` | Copies `elems` slots from one area of a table `id1` to another table `id2` 
| `table.fill` | `table.fill<id>(elements, value, dest)` | Sets `elements` slots start at `dest`to the  `value`
| `table.init` | `table.init<tableid, elemid>(elements : i32, source : i32, dest : i32)` | Initializes a table with `elements` slots from an element section
| `elem.drop` | `elem.drop<id>()` | Discards the memory in an element segment.

## Memory Instructions

memory.init and data.drop not implemented yet. Requires data indexing.

| Wasm | Wase | Comments |
-|-|-|
| `*.load` | `load<>(address)` or `load<offset>(address)` or `load<offset, align>(address)`| The type is inferred from the use.
| `*.load(8,16,32)_(s,u)` | `load(8,16,32)_(s,u)<>(address)` | Load the lower N bits from a memory address. _s implies sign-extension. The type is inferred from the use
| `*.store` | `store<>(address, value)` | The width is inferred from the value.
| `*.store(8,16,32)` | `store(8,16,32)<>(address, value)` | Store the lower N bits of a value. The width is inferred from the value
| `memory.size` | `memory.size<>()` | Returns the unsigned size of memory in terms of pages (64k)
| `memory.grow` | `memory.grow<>(size)` | Increases the memory by `size` pages. Returns the previous size of memory, or -1 if memory can not increase
| `memory.copy` | `memory.copy<>(bytes, source, dest)` | Copy `bytes` bytes from source to destination
| `memory.fill` | `memory.fill<>(bytes, bytevalue, dest)` | Fills `bytes` bytes with the given byte value at `dest`
| `memory.init` | `memory.init<id>(bytes, source, dest)` | Copies `bytes` from a data section `<id>` at address `source` into memory starting at address `dest`
| `data.drop` | `data.drop<id>()` | Frees the memory of data segment <id>

## Numeric Instructions

| Wasm | Wase | Comments |
|-|-|-|
| `i32.const` | `1` or `0x1234`
| `i64.const` | `2w` or `0x1234w`
| `f32.const` | `0x1234n` | We do not have natural, number syntax for f32
| `f64.const` | `3.1` or `0x123h`
| `*.clz` | `clz<>(exp)` | Returns the number of leading zero bits. The width is inferred
| `*.ctz` | `ctz<>(exp)` | Returns the number of trailing zero bits. The width is inferred
| `*.popcnt` | `popcnt<>(exp)` | Returns the number of 1-bits. The width is inferred
| `*.add` | `<exp> + <exp>` | The width is inferred
| `*.sub` | `<exp> - <exp>` | The width is inferred
| `*.mul` | `<exp> * <exp>` | The width is inferred
| `*.div_s` | `<exp> / <exp>` | Signed division. Rounds towards zero. The width is inferred
| `*.div_u` | `div_u<>(<exp>,  <exp>)` | Unsigned division. The width is inferred
| `*.div` | `<exp> / <exp>` | Signed division. The width is inferred
| `*.rem_s` | `<exp> % <exp>` | Signed remainder. The width is inferred
| `*.rem_u` | `rem_u<>(<exp>,  <exp>)` | Unsigned remainder. The width is inferred
| `*.and` | `<exp> & <exp>` | Bitwise and. The width is inferred
| `*.or` | `<exp> \| <exp>` | Bitwise or. The width is inferred
| `*.xor` | `<exp> ^ <exp>` | Bitwise xord. The width is inferred
| `*.shl` | `shl<>(val, bits)` | Shift left, i.e. multiplication of power of two. The width is inferred
| `*.shr_s` | `shr_s<>(val, bits)` | Signed right shift. Division by power of two, rounding down. The width is inferred
| `*.shr_u` | `shr_u<>(val, bits)` | Unsigned right shift. Division by power of two. The width is inferred
| `*.rotl` | `rotl<>(val, bits)` | Rotate left. Bits "loop" around. The width is inferred
| `*.rotr` | `rotr<>(val, bits)` | Rotate right. Bits "loop" around. The width is inferred
| `*.abs` | `abs<>(val)` | Absolute value of floats. The width is inferred
| `*.neg` | -2.0 | Negate floating point value. The width is inferred
| `*.ceil` | `ceil<>(val)` | Rounds up to the nearest integer. The width is inferred
| `*.floor` | `floor<>(val)` | Rounds down to the nearest integer. The width is inferred
| `*.trunc` | `trunc<>(val)` | Discard the fractional part, rounding to integer towards zero. The width is inferred
| `*.nearest` | `nearest<>(val)` | Round to the nearest integer, with ties rounded toward the value with an even least-significant digit. The width is inferred
| `*.sqrt` | `sqrt<>(val)` | Square root. The width is inferred
| `*.min` | `min<>(val, val)` | Minimum of two values. NaN wins. The width is inferred
| `*.max` | `max<>(val, val)` | Maximum of two values. Nan wins. The width is inferred
| `*.copysign` | `copysign<>(val, sign)` | Copies the sign from `sign` into the value of `val`. The width is inferred
| `*.eqz` | `eqz<>(val)` | Is the value equal to 0? The width is inferred
| `*.eq` | `val == val` | The width is inferred
| `*.ne` | `val != val` | The width is inferred
| `*.lt_s` | `val < val` | The width is inferred
| `*.lt_u` | `lt_u<>(val, val)` | Unsigned comparison. The width is inferred
| `*.gt_s` | `val > val` | The width is inferred
| `*.gt_u` | `gt_u<>(val, val)` | Unsigned comparison. The width is inferred
| `*.le_s` | `val <= val` | The width is inferred
| `*.le_u` | `le_u<>(val, val)` | Unsigned comparison. The width is inferred
| `*.ge_s` | `val >= val` | The width is inferred
| `*.ge_u` | `ge_u<>(val, val)` | Unsigned comparison. The width is inferred
| `i32.wrap_i64` | `wrap<>(val)` | Takes lower 32 bits of an i64.
| `*.trunc*_s` | `trunc_s<>(val)` | Converts f32 or f64 to i32 or i64, considering the result signed.
| `*.trunc*_u` | `trunc_u<>(val)` | Converts f32 or f64 to i32 or i64, considering the result unsigned.
| `*.trunc_sat*_s` | `trunc_sat_s<>(val)` | Converts f32 or f64 to i32 or i64, considering the result signed, saturating.
| `*.trunc_sat*_u` | `trunc_sat_u<>(val)` | Converts f32 or f64 to i32 or i64, considering the result unsigned, and saturating.
| `*.extend_i32_s` | `extend_s<>(val)` | Lifts a i32 to a i64, as signed.
| `*.extend_i32_u` | `extend_u<>(val)` | Lifts a i32 to a i64, as unsigned.
| `*.extend8_s` | `extend8_s<>(val)` | Lifts a byte to a i32/i64, as signed. The val is the same type as the result
| `*.extend16_s` | `extend16_s<>(val)` | Lifts 16 bits to a i32/i64, as signed.  The val is the same type as the result
| `*.convert*_s` | `convert_s<>(val)` | Lifts signed i32/i64 to f32/f64.
| `*.convert*_u` | `convert_u<>(val)` | Lifts unsigned i32/i64 to d32/f64.
| `*.demote_f64` | `demote*<>(val)` | Lowers a f64 to f32
| `*.promote_f32` | `promote*<>(val)` | Lifts a f32 to a f64
| `*.reinterpret*` | `reinterpret<>(val)` | Taking bit pattern of i32/i64/f32/f64 and interpret as f32/f64/i32/i64 correspondingly.

## **Vector Instructions**

None of these are implemented yet.

| Wasm | Wase | Comments |
|-|-|-|

# Wasm Sections

## Imports of globals and functions

Use this syntax to import a function from the host:

	// Function import from host
	import println : (i32) -> void = console.log;

Notice imports have to be the first thing in the program.

The same works for globals:

	// Global import
	import id : i32 = module.name;
	import id : mutable i32 = module.name;

## Memory

You have to explicitly define how much memory is available for the runtime.
To reserve memory, use syntax like this:

	export? memory <min> <max>?;

or in case it is imported from the host:

	import memory <min> <max>? = module.name;

Examples:

	// Reserves one page of 64k
	memory 1;

	// Reserves 64k at first, but maximum 1mb
	memory 1 4;

	// Reserves 128k and exports this memory under the name "memory" to the host
	export memory 2;

	// Reserves and exports memory under the name "mymem"
	export "mymem" memory 1 4;

	// 64k Memory import from the host
	import memory 1 = module.name;

## Data

You can place constant data in the output file using syntax like this:

	// Strings are placed as UTF8 but with the length first
	data "utf8 string is very comfortable";

	// We can have a sequence of data. Each int is a byte.
	data 1, 2, 3, "text", 3.0;

	// Moving the data into offset 32 of the memory
	data "Hello, world!" offset 32;

The result is that this data is copied into memory on startup.

## Tables

Importing of tables is done like this:

	// Table of functions of min size 1, named module.mytable in the host
	import mytable : table<func>(1) = module.mytable;

	// Table of externs of min size 5, max size 10, named module.myexterns in the host
	import myexterns : table<extern>(5 10) = module.myexterns;

# Standard library

There is a minimal standard library you get with `include lib/runtime`.
It contains these helpers:

	// Prints a byte to stdout
	printByte(i : i32) -> ()

	// Print unsigned i32 as decimal
	printu32(i : i32) -> ()

	// Print signed i32 as decimal
	printi32(i : i32) -> ()

	// Prints unsigned as hexadecimal
	printHex32(i : i32) -> ()

These require Wasi. There is a stub for the wasi interface in `lib/wasi.wase`
but that is very incomplete at the moment.

There is a start of a memory allocator in `lib/malloc.wase`. It has
a double-linked list of blocks, and a separate area for small allocations
(<16 bytes>). It will be probably be refactored to expose the different 
management disciplines more directly.

# Development

Wase is written in flow9. To develop on Wase itself, first install flow9:

	https://github.com/area9innovation/flow9

We recommend to use VS Code with the flow9 extension.

To run the compiler from the command line, use

	bin\wased tests/euler1.wase

This will compile the compiler, and use this to compile the `euler1.wase` file
to a `euler1.wasm` file. It is thus exactly the same as `bin\wase` except that
it uses the latest source of the compiler.

When you make changes to the compiler, it is recommended to make sure there are
no regressions by running all test cases and produce `.wat` output as well 
using `wasm2wat`:

	bin\wased -- test=1 wat=1

This requires that you install WABT first 

	https://github.com/WebAssembly/wabt

If there are regressions, the `.wat` and/or `.wasm` files in the `tests`
folder will have changes when you do `git status`.

You can compile a new `wase.jar` binary release used by `bin\wase` using:

	flowc1 wase/wase.flow jar=bin/wase.jar

This requires a Java JDK like OpenJDK.

## Implementation notes

For each instruction, we need to define three basic different things:

- Syntax. Done in `grammar.flow` using Gringo.
- Typing. Done in `type.flow` using DSL typing.
- Compilation. Done in `compile.flow` using the Wase intermediate AST
- Low-level compilation to bytecode is done in the flow9 repository in `flow9/lib/formats/wasm/wasm_encode.flow`

## TODOS

There are a number of things, that would make Wase better:

- Better parse errors with positions
- Support mutual recursion by recording the types and indexes of all globals
  and functions before type checking and code gen

- Add the last instructions
- Add SIMD instructions
- Complete the Wasi interface
- Encode 64-bit constants as S64, rather than U64. 
- Check all I32 encodings whether they are S32 or U32

- More natural call-indirect syntax
	calls : table< (i32) -> i32 > = [fn1, fn2, fn3];
	call_indirect<calls>(index)(args)

	fnidx<calls, fn1>  = how to get a function pointer

- More natural switch syntax?
	switch (index) {
		0: {}
		1: {}
		2: {}
		default: whatever;
	}

- We support a special "hole<>()" instruction, which does nothing.
  The hole construct could in principle allow stack-like code:

	[1, hole<>() + 2 ]

  Right now, typing infer that type to (i32, i32), while it really is
  i32. So the code above compiles correctly, and works at runtime, but
  our type inference is not smart enough to know this.

- Refactor the malloc to be separate allocation policies

- Add syntax for passive data, which is not automatically copied into memory
  until memory.init is called.

- Add support for naming the data index for memory.init and data.drop

	data id : 1, 23, ... ?

- Capture the address or size of data segments to make use easier?

- Document the implicit tables for ref.func 
- Automatically construct table for indirect calls
- Add syntax for elements, which are pieces to initialize tables
