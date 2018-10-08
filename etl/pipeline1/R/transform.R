#' Find market share of unit sales over time
#'
#' @param df_in Long-format data frame of video game sales
get_shares <- function(df_in) {
    df_out <- df_in %>%
        group_by(region, platform, year) %>%
        summarize(sales = sum(sales, na.rm = TRUE)) %>%
        group_by(region, platform) %>%
        mutate(
            mkt_share = (sales / sum(sales, na.rm = TRUE))) %>%
        ungroup()
}


#' Clean & prepare XYZ data
#'
#' Given the XYZ data, prepares it according to your predefined business logic.
#' Note that this returns a named `list` of `data.frame`s.
#'
#' @param df_in Data frame of XYZ data
#'
#' @return A named `list` of `data.frame`s, where the element names serve as the
#'   name of each table in the target database.
#'
#' @export
prep <- function(df_in) {
    colnames(df_0) <- tolower(colnames(df_0))

    df_long <- df_0 %>%
        gather(., key = region, value = sales, contains("sales"))

    df_list <- list()

    df_list$platform_share <- get_shares(df_long)

    df_list
}
