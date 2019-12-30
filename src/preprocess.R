####### Preprocess rawtext files into dataframe #######
library(jiebaR)

# Get text file paths
fps <- list.files("rawdata/samesex_marriage/posts", full.names = T)

titles <- vector("character", length(fps))
topics <- vector("character", length(fps))
contents <- vector("character", length(fps))
ids <- vector("character", length(fps))

# Initialize jiebaR
seg <- worker(user = "rawdata/samesex_marriage/user_dict.txt")

for (i in seq_along(fps)) {
  # Get topic from file name
  topics[i] <- strsplit(basename(fps[i]), "_")[[1]][1]
  
  # Read post from file
  post <- readLines(fps[i])
  
  # Get post title (First line of file)
  titles[i] <- post[1]
    
  # Segment post
  segged <- segment(post[-(1:2)], seg)
  contents[i] <- paste(segged, collapse = " ")
}


# Combine results in a df
df <- tibble::tibble(id = seq_along(titles), topic = topics, title = titles, content = contents)
#print(df)
saveRDS(df, "data/samesex_marriage.rds")
