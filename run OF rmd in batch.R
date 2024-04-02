# List all CSV files in the directory
csv_files <- list.files("Z:/hannah/automated_anxiety-main/Lab meeting examples/", pattern = "\\.csv$")

# Load libraries
library(rmarkdown)

# Loop through each CSV file
for (csv_file in csv_files) {
  # Extract file name without extension
  file_name <- tools::file_path_sans_ext(csv_file)
  
  # Set output file name for PDF
  output_file <- paste0("Z:/hannah/automated_anxiety-main/Lab meeting examples/PDF_reports", file_name, ".pdf")
  
  # Knit the R Markdown file
  rmarkdown::render("C:/Users/psyc-hel488/OneDrive - The University of Texas at Austin/Documents/automated_anxiety-main/OF-analysis-with-DLCAnalyzer1.Rmd", 
                    params = list(input_csv = csv_file), 
                    output_file = output_file)
}
