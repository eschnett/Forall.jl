module Forall

typealias Callable Union{Function, DataType}



export forall

"""
    forall(f, iter)

Iterate over `iter`, applying `f` to each element. The call

    forall(iter) do x
        f(x)
    end

is equivalent to

    for x in iter
        f(x)
    end

This also corresponds to `(map(f, iter); nothing)`.
"""
function forall(f::Callable, iter)
    for x in iter
        f(x)
    end
end

end
