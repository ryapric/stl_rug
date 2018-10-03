#' Read from PostgreSQL database connection
#'
#' Given a database `db` and a table `tbl`, returns a `data.frame`.
#'
#' @param db Database name, passed as a string.
#' @param tbl Table name, passed as a string.
#'
#' @export
read_pg <- function(db, tbl) {
    con <- dbConnect(RPostgres::Postgres(),
                     dbname = db,
                     host = "127.0.0.1",
                     port = 5432,
                     user = "postgres",
                     password = "postgres")
    dbReadTable(con, tbl)
    # dbDisconnect(con)
}
