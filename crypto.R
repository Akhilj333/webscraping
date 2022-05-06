#Packages
library(rvest)
library(tidyverse)
library(stringr)

url = read_html("https://cryptocurrencyliveprices.com/?msclkid=63bcf23ecd5211ec9850cfda2bd354a3")
table = html_nodes(url, css = "table")

#Convert to table
crypto_table = html_table(table, fill = T) %>% as.data.frame()
save(crypto_table, file="crypto.csv")
view(crypto_table)