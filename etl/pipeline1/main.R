#!/usr/bin/env Rscript

library(pipeline1)

df_0 <- read_sqlite(db = "../db.sqlite", tbl = "vgsales")

df_list <- prep(df_0)

write_pg(df_list, db = "postgres", tbl_name = "vgsales", overwrite = TRUE)
