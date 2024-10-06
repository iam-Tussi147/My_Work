library(dplyr)


recomb_data <- read.csv("/Users/tusharsingh/Downloads/Table S2 Original_Output_VDJ_Recoveries_BRCA_Human_RNA-Seq_new.csv",header=TRUE)

antiviral_data <- read.table("/Users/tusharsingh/Documents/GB/1st/SearchTable-2024-09-27 20_25_04.092.tsv", sep = "\t", header = TRUE,fill=TRUE)

cdr3_rec <- trimws(recomb_data$CDR3) 
cdr3_rec

cdr3_db <- trimws( antiviral_data$CDR3)
cdr3_db



# Find common CDR3 sequences (matches)
matched_cdr3 <- intersect(cdr3_rec, cdr3_db)



# Print the matches
print(matched_cdr3)

# index 

index_rec<- match( matched_cdr3,cdr3_rec)

index_db<- match( matched_cdr3,cdr3_db)


head(index_rec)
index_rec  
index_db  
  
result <- data.frame(
  Read.ID = recomb_data$Read.ID[index_rec], 
  Gene = antiviral_data$Gene[index_db],
  Receptor = recomb_data$Receptor[index_rec],
  E.Species = antiviral_data$Epitope.species[index_db],
  MHC.Class = antiviral_data$MHC.class[index_db],
  CDR3 = matched_cdr3
  )  
result  

Result <- result %>%
  mutate( Read.ID = gsub("A00430:396:HYTTLDMXX:", "", Read.ID))

Result          
