## do something with house elf data

elf_data_1<-read.csv("./data/houseelf_earlength_dna_data_1.csv.csv", stringsAsFactors = FALSE)

library(stringr)

dnaseq<-str_to_lower(elf_data_1$dnaseq)
get_gc_content<- function (sequences){
  gc_content<-(str_count(dnaseq,"g") +  str_count(dnaseq, "c"))/str_length(sequences) * 100
  return(gc_content)
}

get_gc_content(dnaseq)
