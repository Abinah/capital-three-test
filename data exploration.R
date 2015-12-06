

#capital three test
#Abinah Gekara

#load packages
library(data.table)
library(ggpolt2)
#read data
files <- dir(pattern = "(csv|CSV)", full.names = TRUE) # get path n filenames
datafiles <- lapply(files, data.table::fread) # read data from files, 
names(datafiles) <- files # assign names to list items
