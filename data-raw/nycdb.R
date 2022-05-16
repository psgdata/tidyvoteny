# Compress data table
nycdb <- readRDS("~/work_space/tidyvoteny/nycdb.Rds")
#nycdb <- stringi::stri_trans_general(nycdb, "latin-ascii")
nycdb <- data.table::as.data.table(x = nycdb)
usethis::use_data(nycdb, compress = "xz",overwrite = TRUE)
rm(nycdb)
file.remove("nycdb.Rds")
