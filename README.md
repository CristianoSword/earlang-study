# 🚀 Erlang Study Guide

<h4 align="center">
    <p>
        <b>English</b> | <a href="./README-ptbr.md">Português</a>
    </p>
</h4>

A comprehensive Erlang learning path covering functional programming fundamentals, concurrency, and fault-tolerant systems through granular code examples.

## 📊 Progress
Currently: 20/60 Steps Planned

### Phase 1: Beginner
| Step | Topic | Description |
|---|---|---|
| 01 | Hello World | Basic module structure and output |
| 02 | Variables | Uppercase naming and immutability |
| 03 | Functions | Defining, arity, and exporting |
| 04 | Pattern Matching | Clause selection and data extraction |
| 05 | Lists & Tuples | Core data structures and operations |
| 06 | Recursion | Functional looping and accumulation |
| 07 | Guards | Adding conditions to pattern matching |
| 08 | Control Flow | Case and If expressions |
| 09 | List Comprehensions | Elegant list transformations |
| 10 | Maps & Records | Structured data and KV pairs |
| 11 | Higher Order Functions | Functions as first-class citizens |
| 12 | Anonymous Functions | The `fun` syntax and closures |
| 13 | Strings & Binaries | Handling text and bitstreams |
| 14 | Exceptions | Error handling with try/catch |
| 15 | File IO | Persistent storage operations |
| 16 | Basic Concurrency | Process creation with `spawn` |
| 17 | Message Passing | Communication via `!` and `receive` |
| 18 | Links & Monitors | Managing process dependencies |
| 19 | Registered Processes | Naming processes globally |
| 20 | ETS Tables | High-performance in-memory storage |

## 🛠️ How to Run

To compile and run any module, you'll need the Erlang/OTP installed.

### Using the Shell (Interactive)
```bash
erl
> c("01_hello_world").
> '01_hello_world':start().
```

### From the Command Line
```bash
erlc 01_hello_world.erl
erl -noshell -s 01_hello_world start -s init stop
```
