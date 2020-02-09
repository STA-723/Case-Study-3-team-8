library(readr)
d <- read_fwf("Harvard_CAS_2001/Harvard_CAS_2001/DS0001/04291-0001-Data.txt",
         fwf_widths(rep(1,556)),
         na = c(" ", "."),
         guess_max = 1e4) 
