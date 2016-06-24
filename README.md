# Forall

[![Build Status](https://travis-ci.org/eschnett/Forall.jl.svg?branch=master)](https://travis-ci.org/eschnett/Forall.jl)
[![Build status](https://ci.appveyor.com/api/projects/status/upbai08mi44eoln7/branch/master?svg=true)](https://ci.appveyor.com/project/eschnett/forall-jl/branch/master)
[![codecov](https://codecov.io/gh/eschnett/Forall.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/eschnett/Forall.jl)

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
This is also equivalent to `(map(f, iter); nothing)`.
