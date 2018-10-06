#!/usr/bin/env Rscript

library(pipeline1)

df_0 <- read_sqlite(db = file.path(here::here(), "../db.sqlite"), tbl = "vgsales")

# df_1 <- prep(df_0, how = "vgsales")
df_1 <- df_0

write_pg(df_1, db = "postgres", tbl_name = "vgsales")
