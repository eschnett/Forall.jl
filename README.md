# Forall

[![Build Status](https://travis-ci.org/eschnett/Forall.jl.svg?branch=master)](https://travis-ci.org/eschnett/Forall.jl)

Provide a function `forall(f, iter)`

The function
```Julia
forall(f, iter)
```
iterates over `iter`, applying `f` to each element. This corresponds to
```Julia
for x ∈ iter
    f(x)
end
```
This is also equivalent to `map(f, iter); nothing`.
