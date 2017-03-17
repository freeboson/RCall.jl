using Base.Test
hd = homedir()
pd = Pkg.dir()

using RCall
using Compat

# https://github.com/JuliaStats/RCall.jl/issues/68
@test hd == homedir()
@test pd == Pkg.dir()

tests = ["basic",
         "convert/base",
         "convert/data",
         "convert/datetime",
         "convert/axisarray",
         "library",
         "render",
         "repl",
         ]

println("Running tests:")

for t in tests
    tfile = string(t, ".jl")
    println(" * $(tfile) ...")
    include(tfile)
end
