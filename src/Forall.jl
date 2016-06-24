module Forall

typealias Callable Union{Function, DataType}



export forall

"""
    forall(f, iter)

Iterate over `iter`, applying `f` to each element. This corresponds to

    for x ∈ iter
        f(x)
    end

This is also equivalent to `(map(f, iter); nothing)`.
"""
function forall(f::Callable, iter)
    for x ∈ iter
        f(x)
    end
end

end
