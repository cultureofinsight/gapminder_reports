continents <- c("Asia", "Europe", "Africa", "Americas", "Oceania")

renderMyReport <- function(continent) {
  rmarkdown::render("report.Rmd", 
                    output_file = paste0(continent,"_report_", Sys.Date(), ".html"),
                    params = list(continent = continent), 
                    output_options = list(self_contained = FALSE, lib_dir = "libs"))
}

purrr::walk(continents, renderMyReport)