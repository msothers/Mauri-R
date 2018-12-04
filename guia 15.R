#guia 15
library(stringr)

#elimine cualquier caracter que no sea una letra
x <- c("argentina(1)", "Brazil", "chile", "indonesia", "Uganda")

x <- str_replace_all(x,"[\\d\\(\\)]", "")
x

str_sub(x,1,1) <- str_to_upper(str_sub(x,1,1), locale= "es")
x

str_detect(x,"^[AEIOU]")
str_subset(x,"^[AEIOU]")
sum(str_detect(x,"^[AEIOU]"))


str_detect(x,"^[^AEIOU]")
str_subset(x,"^[^AEIOU]")
sum(str_detect(x,"^[^AEIOU]"))



### terminan en A

str_subset(x,"a$")
x[str_detect(x,"a$")]

x[c(FALSE, FALSE, TRUE, TRUE, FALSE)]


###
str_subset(x,"[AU]")

str_count(x,"[a-zA-Z]")




str_count(x, "[aeiouAEIOU]")
mean(str_count(x, "[aeiouAEIOU]"))


l <- str_length(x)
m <-ceiling(l/2)
str_sub(x,m,m)
x




## dos consonantes
library(xml2)
library(rvest)
library(dplyr)

url <- read_html("https://es.wikipedia.org/wiki/Anexo:Comunas_de_Chile_por_población")
pop <- url %>%
   html_nodes(xpath='//*[@id= "mw-content-text"]/div/center/table') %>%
  html_table()


 pop <- pop[(1)]
pop <- pop %>% rename(pop1992= 'Población (1992)',
                      pop2002= 'Población (2002)',
                      pop2017= 'Población (2002)')



 pop <- pop%>%mutate(pop1992=str_replace_all(pop1992,"\\s+", ""),
   pop2002=str_replace_all(pop2002,"\\s+", ""),
   pop2017=str_replace_all(pop2017,"\\s+", "") )




##hola probando rjsdvdfvckdffvlcsdfvjc
 
 
 sfsgfsdgs




