#prereq: 
#devtools::install_github("hadley/assertthat")
#install.packages("gtable")
#install.packages("scales")
#install.packages("broom")
#install.packages("stringi")
#install.packages("htmltools")
#install.packages("htmlwidgets")
#install.packages("igraph")
#install.packages("purrr")
#install.packages("quantmod")
#install.packages("rlist")
#install.packages("XML2R")
#install.packages("hexbin")
#install.packages("hms")
#install.packages("Hmisc")
#devtools::install_github("BillPetti/baseballr")

library(sqldf)
library(odbc)
library(RODBC)
library(baseballr)

dbhandle <- odbcDriverConnect('driver={SQL Server};server=SQL2019;database=MLB;trusted_connection=true')
res <- sqlQuery(dbhandle, 'SELECT [gamedate] FROM [MLB].[dbo].[dates]')

for (i in 1:nrow(res))
{
  gd <- res[i,1]

  df <- scrape_statcast_savant_batter(start_date = as.character(gd), end_date = as.character(gd), batterid = NULL)
  
  con <- dbConnect(odbc(),
                   Driver = "SQL Server",
                   Server = "SQL2019",
                   Database = "MLB")
  dbWriteTable(conn = con,
               name = "Pitches",
               value = df,
               append = TRUE)
}




 