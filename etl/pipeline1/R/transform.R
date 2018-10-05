#' Clean & prepare XYZ data
#'
#' Given the XYZ data, prepares it according to your predefined business logic.
#'
#' @param df_in Data frame of XYZ data
#' @param how How should the data be prepared, i.e. defined by which soure's
#'   transormation logic?
#'
#' @export
prep <- function(df_in, how) {
    df_out <- wtl_cast(df_in)
    df_out <- agg()
}


#' Cast Wide to Long on data
wtl_cast <- function(df_in) {
    df_out <- gather(df_in, YADDA, YADDA)
    validate_wtl_cast(df_out)
    df_out
}
