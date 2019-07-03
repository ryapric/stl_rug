Utility to Generate Forecasts of Federal Reserve Economic Data (FRED)
=====================================================================

(Please note that this README documents this repo in a ***NON-IDEAL STATE***, as
the goal of this workshop is to demonstrate how NOT to have to write a project
like this)

This repository contains a script (`main.R`) to generate forecasts of FRED data.
It retrieves the chosen data from FRED, generates a forecast series, appends it
to the original data, and writes the output to a database table.

How to Use
----------

1. Edit `main.R`'s starting values (near the top) to align with your chosen FRED
   series ID (`fred_id`). You can edit the `fred_id`, the history length
   (`start_date`/`end_date`), and the frequency & forecast lengths (`freq` and
   `h`, respectively). You can search for valid FRED series IDs
   [here](https://fred.stlouisfed.org/tags/series).

2. Run the script. The written DB table will be named "fcast_<fred_id>".