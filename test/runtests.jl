using Forall
using Base.Test

let sum = 0
    res = forall(1:10) do i
        sum += i
    end
    @test sum === 55
    @test res === nothing
end

# This performs the same operations as above, except that it also
# allocates an array with the result of each iteration
let sum = 0
    res = map(1:10) do i
        sum += i
    end
    @test sum === 55
    @test typeof(res) === Vector{Int}
    @test length(res) == 10
    @test res[1] === 1
    @test res[end] === 55
end
