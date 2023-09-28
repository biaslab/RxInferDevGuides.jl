using RxInferDevGuides
using Documenter

DocMeta.setdocmeta!(RxInferDevGuides, :DocTestSetup, :(using RxInferDevGuides); recursive=true)

GUIDE_PAGES = [
    "guides/new-package.md",
    "guides/docs-contributing.md"
]

makedocs(;
    modules=[RxInferDevGuides],
    authors="Bagaev Dmitry <d.v.bagaev@tue.nl>",
    repo="https://github.com/biaslab/RxInferDevGuides.jl/blob/{commit}{path}#{line}",
    sitename="RxInfer Developer Guides",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://biaslab.github.io/RxInferDevGuides.jl",
        edit_link="main",
        assets=String[]
    ),
    pages=[
        "Home" => "index.md",
        "Guides" => GUIDE_PAGES
    ]
)

deploydocs(;
    repo="github.com/biaslab/RxInferDevGuides.jl",
    devbranch="main"
)
