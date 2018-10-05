library(pipeline1)

df_0 <- read_pg(db = "postgres", tbl = "iris")

df_1 <- prep(df_0, how = "iris")

write_pg(df_1, db = "postgres", tbl = "iris")
