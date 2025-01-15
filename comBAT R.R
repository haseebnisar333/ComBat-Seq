# install.packages("devtools")
devtools::install_github("zhangyuqing/sva-devel")
count_matrix <- matrix(rnbinom(400, size=10, prob=0.1), nrow=50, ncol=8)
batch <- c(rep(1, 4), rep(2, 4))

adjusted <- ComBat_seq(count_matrix, batch=batch, group=NULL)
