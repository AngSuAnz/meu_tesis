
# Iniciar renv (solo si no existe ya)

#(install.packages("renv"))
#renv::restore()

if (!requireNamespace("renv", quietly = TRUE)) install.packages("renv")
if (!file.exists("renv.lock")) renv::init()

paquetes=(c("bootstrap",
            "bslib",
            "data.table",
            "distill",
            "dplyr",
            "DT",
            "geofacet",
            "ggmap",
            "ggplot2",
            "googlesheets4",
            "installr",
            "janitor",
            "knitr",
            "leaflet",
            "leaflet.extras",
            "lubridate",
            "lwgeom",
            "maptools",
            "openxlsx",
            "osmdata",
            "osrm",
            "plotly",
            "purrr",
            "RColorBrewer",
            "readxl",
            "readr",
            "rgdal",
            "rgeos",
            "rmarkdown",
            "rsconnect",
            "scales",
            "sf",
            "sodium",
            "sp",
            "stringr",
            "tidyencoder",
            "tidyr",
            "tidyverse",
            "viridis",
            "viridisLite",
            "vroom",
            "writexl"))

# Instalar solo los paquetes que falten
paquetes_a_instalar <- paquetes[!(paquetes %in% installed.packages()[,"Package"])]
if (length(paquetes_a_instalar)) install.packages(paquetes_a_instalar)

# (Opcional) Cargar todos los paquetes
invisible(lapply(paquetes, library, character.only = TRUE))
