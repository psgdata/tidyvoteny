nycdb <- data.table::fread("nycdb.csv",header = T,stringsAsFactors = F)
nycdb <- stringi::stri_trans_general(nycdb, "latin-ascii")
usethis::use_data(nycdb, compress = "xz",overwrite = TRUE)
