# Configuration File
## The following lines set package, path, and versioning information for analyzing the raw fastq files

## Identify, Install, and Load Packages 
packages = list(
  CRAN = c("ggplot2", "dplyr"), # for all CRAN packages
  bioc = c() # for all packages through BiocManager
)

### Manage installations as needed
installed = installed.packages() |> rownames()
for (pkg in packages$CRAN){
  if (!pkg %in% installed) install.packages(pkg, repos = "https://cloud.r-project.org/", update = FALSE)
  
}
for (pkg in packages$bioc){
  if (!pkg %in% installed) BiocManager::install(pkg, update = FALSE)
  
}

### Load packages from library, quietly
suppressPackageStartupMessages({
  for (p in packages$CRAN) library(p, character.only = TRUE)
  for (p in packages$bioc) library(p, character.only = TRUE)
})


## Set Output Destination
### The output destination is based on a series of modular strings that can be combined for more tidy versioning. You can add, modify, or delete these as makes sense for your project

### Set the base location:
base <- "Data/Outputs"

### Set the type of folder, for figures or interim objects:
interim <- "InterimObjects"
figures <- "Figures"

### Combine the strings to make each of our desired output folders, and create the folders if they donʻt already exist. If the folders already exist, it won't affect the existing folder

path_out <- paste(base, date, interim, sep = "/")
path_fig <- paste(base, date, figures, sep = "/")

#### Make the directories
dir.create(path_out, showWarnings = FALSE, recursive = TRUE)
dir.create(path_fig, showWarnings = FALSE, recursive = TRUE)

## Set Raw and Any Other Locations
### We follow the same process as before, just changing the string to create more folders

#### Set strings for the other folders.
path_raw <- "Data/Raw/"
path_input <- "Data/Input"

dir.create(path_raw, recursive = TRUE, showWarnings = FALSE)
dir.create(path_input, recursive = TRUE, showWarnings = FALSE)


# Now all folders should be created and ready 

