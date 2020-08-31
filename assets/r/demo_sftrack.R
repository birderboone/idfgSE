# Load in libraries
library(sftrack)
library(lubridate)

# initial setup
data(raccoon)
projection <- '+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs'
raccoon$timestamp <- ymd_hms(raccoon$timestamp)
raccoon$month <- month(raccoon$timestamp, label = TRUE)

# create object
my_sftrack <- as_sftrack(data = raccoon, coords = c('longitude','latitude'),
                         crs = projection, burst = c(id = 'animal_id', month = 'month'), 
                         active_burst = 'id',time = 'timestamp')


View(my_sftrack)


