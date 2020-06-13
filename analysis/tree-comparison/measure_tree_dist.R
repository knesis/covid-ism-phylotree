library('ape')
library('phangorn')

fname_ism <- "fastree_result_ism.tre"
fname_ns <- "nextstrain_ncov_global_2020-05-14_tree.nwk"

tree_ism <- ape::read.tree(fname_ism)
tree_ns <- ape::read.tree(fname_ns)

treedist(tree_ism,tree_ns,check.labels=FALSE)