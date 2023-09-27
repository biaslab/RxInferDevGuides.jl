using RxInferDevGuides
using Documenter

DocMeta.setdocmeta!(RxInferDevGuides, :DocTestSetup, :(using RxInferDevGuides); recursive=true)

makedocs(;
    modules=[RxInferDevGuides],
    authors="Bagaev Dmitry <d.v.bagaev@tue.nl>",
    repo="https://github.com/biaslab/RxInferDevGuides.jl/blob/{commit}{path}#{line}",
    sitename="RxInferDevGuides.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://biaslab.github.io/RxInferDevGuides.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/biaslab/RxInferDevGuides.jl",
    devbranch="main",
)
