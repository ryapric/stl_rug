#' Write to a PostgreSQL database connection
#'
#' Given a database `db` and a table `tbl`, returns a `data.frame`.
#'
#' @param df_list Data frame to write as a DB table.
#' @param db Database name, passed as a string.
#' @param ... Other args passed on to [DBI::dbWriteTable()].
#'
#' @export
write_pg <- function(df_list, db, ...) {
    con <- dbConnect(RPostgres::Postgres(),
                     dbname = db,
                     host = "127.0.0.1",
                     port = 5432,
                     user = "postgres",
                     password = "postgres")

    lapply(names(df_list), function(tbl_name) {
        dbWriteTable(con, name = tbl_name, value = df_list[[tbl_name]], ...)
    })

    dbDisconnect(con)
}
