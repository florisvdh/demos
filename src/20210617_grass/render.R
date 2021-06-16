library(rprojroot)
gitroot <- find_root(is_git_root)
setwd(file.path(gitroot, "src/20210617_grass"))
xfun::Rscript_call(
    bookdown::render_book,
    list(output_file = file.path(gitroot,
                                 "docs/20210617_grass/index"))
)
