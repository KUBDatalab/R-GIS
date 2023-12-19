library(tidyverse)

library(sf)
library(geojsonR)
library(rgdal)


# indlæser sogne
sogne <- readOGR("data/geo_dk_sogne.json")
sogne <- st_as_sf(sogne)


# Indlæser københavn
cph <- readOGR("data/cph.geojson")
cph <- st_as_sf(cph)

# Udvælger københavnske sogne
cph_sogne <- sf::st_filter(sogne, cph)


# dem kan vi plotte:
test %>% 
  ggplot() +
  geom_sf() 

# Her kan vi hente københavnske toiletter:
kk_toilet_data_url <- "https://wfs-kbhkort.kk.dk/k101/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=k101%3Atoilet_tmf_kk&outputFormat=application%2Fjson"

# downloader københavnske toiletter:
# download.file(kk_toilet_data_url, "data/kk_toiletter.json")

# indlæs københavnske toiletter
kk_toiletter <- readOGR("data/kk_toiletter.json")

kk_toiletter$features



plot(kk_toiletter)
unlist(kk_toiletter)
kk_toiletter <- st_as_sf(kk_toiletter)

plot(unlist(kk_toiletter))

kk_toiletter %>% unlist()
  as.data.frame()


plot(test)

danmark_sogne %>% head()

cph_sf %>% head()

cph_sp <- rgdal::readOGR("data/cph.geojson")

cph_sf <- st_as_sf(cph_sp)


plot(cph_sf)

view(cph_sf)


cph <- FROM_GeoJson("data/cph.geojson")
sf::st_crs(cph)
install.packages("geojsonio")
library(geojsonio)
spdf <- geojson_read("data/cph.geojson",  what = "sp")
plot(spdf)



# url = "https://api.dataforsyningen.dk/sogne?format=geojson"
# download.file(url, "geo_dk_sogne.json")
