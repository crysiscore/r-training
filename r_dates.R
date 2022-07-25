
library(lubridate, warn.conflicts = FALSE)

#> [1] "2010-12-15"
mdy("4/1/17")

# Simple functions to get and set components of a date-time, such as year(), month(), mday(), hour(), minute() and second():
  
bday <- dmy("14/10/1979")
month(bday)
#> [1] 10
wday(bday, label = TRUE)
#> [1] Sun
#> Levels: Sun < Mon < Tue < Wed < Thu < Fri < Sat

year(bday) <- 2016
wday(bday, label = TRUE)