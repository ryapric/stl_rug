.onLoad <- function(libname, pkgname) {
    # Stop if not run from correct directory
    if (!file.exists("main.R")) {
        stop("Script entrypoint 'main.R' requires tjat  not found. Please run from top-level package directory that contains 'main.R'")
    }
}
