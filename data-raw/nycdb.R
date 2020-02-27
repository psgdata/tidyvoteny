nycdb <- data.table::fread("nycdb.csv",header = T,stringsAsFactors = F)
nycdb <- stringi::stri_trans_general(nycdb, "latin-ascii")
nycdb <- as.data.table(x = nycdb)
usethis::use_data(nycdb, compress = "xz",overwrite = TRUE)
